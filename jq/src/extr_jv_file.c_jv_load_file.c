
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct jv_parser {int dummy; } ;
typedef int jv ;
typedef int buf ;
typedef int FILE ;


 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 int close (int) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int * fdopen (int,char*) ;
 int feof (int *) ;
 int ferror (int *) ;
 size_t fread (char*,int,int,int *) ;
 int fstat (int,struct stat*) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_invalid_has_msg (int ) ;
 int jv_invalid_with_msg (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_parser_free (struct jv_parser*) ;
 struct jv_parser* jv_parser_new (int ) ;
 int jv_parser_next (struct jv_parser*) ;
 int jv_parser_set_buf (struct jv_parser*,char*,size_t,int) ;
 int jv_string (char*) ;
 int jv_string_append_buf (int ,char*,size_t) ;
 int jv_string_fmt (char*,char const*,...) ;
 scalar_t__ jvp_utf8_backtrack (char*,char*,int*) ;
 int open (char const*,int ) ;
 int strerror (int ) ;

jv jv_load_file(const char* filename, int raw) {
  struct stat sb;
  int fd = open(filename, O_RDONLY);
  if (fd == -1) {
    return jv_invalid_with_msg(jv_string_fmt("Could not open %s: %s",
                                             filename,
                                             strerror(errno)));
  }
  if (fstat(fd, &sb) == -1 || S_ISDIR(sb.st_mode)) {
    close(fd);
    return jv_invalid_with_msg(jv_string_fmt("Could not open %s: %s",
                                             filename,
                                             "It's a directory"));
  }
  FILE* file = fdopen(fd, "r");
  struct jv_parser* parser = ((void*)0);
  jv data;
  if (!file) {
    close(fd);
    return jv_invalid_with_msg(jv_string_fmt("Could not open %s: %s",
                                             filename,
                                             strerror(errno)));
  }
  if (raw) {
    data = jv_string("");
  } else {
    data = jv_array();
    parser = jv_parser_new(0);
  }




  const int max_utf8_len = 4;
  char buf[4096+max_utf8_len];
  while (!feof(file) && !ferror(file)) {
    size_t n = fread(buf, 1, sizeof(buf)-max_utf8_len, file);
    int len = 0;

    if (n == 0)
      continue;
    if (jvp_utf8_backtrack(buf+(n-1), buf, &len) && len > 0 &&
        !feof(file) && !ferror(file)) {
      n += fread(buf+n, 1, len, file);
    }

    if (raw) {
      data = jv_string_append_buf(data, buf, n);
    } else {
      jv_parser_set_buf(parser, buf, n, !feof(file));
      jv value;
      while (jv_is_valid((value = jv_parser_next(parser))))
        data = jv_array_append(data, value);
      if (jv_invalid_has_msg(jv_copy(value))) {
        jv_free(data);
        data = value;
        break;
      }
    }
  }
  if (!raw)
      jv_parser_free(parser);
  int badread = ferror(file);
  if (fclose(file) != 0 || badread) {
    jv_free(data);
    return jv_invalid_with_msg(jv_string_fmt("Error reading from %s",
                                             filename));
  }
  return data;
}
