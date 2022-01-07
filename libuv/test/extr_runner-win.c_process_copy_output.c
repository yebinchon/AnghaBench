
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stdio_out; } ;
typedef TYPE_1__ process_info_t ;
typedef int buf ;
typedef int FILE ;


 int SEEK_SET ;
 int _O_RDONLY ;
 int _O_TEXT ;
 int _close (int) ;
 int * _fdopen (int,char*) ;
 int _open_osfhandle (intptr_t,int) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int fseek (int *,int ,int ) ;
 int print_lines (char*,int ,int *) ;
 int strlen (char*) ;

int process_copy_output(process_info_t* p, FILE* stream) {
  char buf[1024];
  int fd, r;
  FILE* f;

  fd = _open_osfhandle((intptr_t)p->stdio_out, _O_RDONLY | _O_TEXT);
  if (fd == -1)
    return -1;
  f = _fdopen(fd, "rt");
  if (f == ((void*)0)) {
    _close(fd);
    return -1;
  }

  r = fseek(f, 0, SEEK_SET);
  if (r < 0)
    return -1;

  while (fgets(buf, sizeof(buf), f) != ((void*)0))
    print_lines(buf, strlen(buf), stream);

  if (ferror(f))
    return -1;

  fclose(f);
  return 0;
}
