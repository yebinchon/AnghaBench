
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int assert (int) ;
 char* cur_write_name ;
 int flush_write (int) ;
 int fprintf (int ,char*,...) ;
 int generate_write_name (int) ;
 scalar_t__ import_fd ;
 char* import_file ;
 int log_split_mod ;
 int new_type (int) ;
 int next_str (char*,int) ;
 scalar_t__ open (char*,int,...) ;
 char read_char () ;
 int read_int () ;
 int* rptr ;
 int search_char (char) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 scalar_t__ valid_type (int) ;
 int verbosity ;
 int * wptr ;
 int * write_buff ;
 int write_event (int,int,int,int) ;
 scalar_t__* write_fd ;
 int write_stat () ;

int import_dump (void) {


  import_fd = open (import_file, O_RDONLY);
  if (import_fd < 0) {
    fprintf (stderr, "Can not open dump (file %s)\n", import_file);
    return 1;
  }
  int i;
  for (i = 0; i < log_split_mod; i++) {
    generate_write_name (i);

    write_fd[i] = open (cur_write_name, O_APPEND | O_WRONLY | O_CREAT, 0644);

    if (write_fd[i] < 0) {
      fprintf (stderr, "can not open file %s for write\n", cur_write_name);
      return 1;
    }
    wptr[i] = write_buff[i];
  }

  int xx = 0;
  char s[1001];
  while (1) {
    int ok = 0;
    while (1) {
      int x = next_str (s, 1000);
      if (x < 0) {
        break;
      }
      if (!strncmp (s, "VALUES", 6)) {

        ok = 1;
        break;
      }
    }
    if (!ok) {
      break;
    }
    while (1) {
      search_char ('(');
      int a,b,c,d,e,f;
      a = read_int (); b = read_int (); c = read_int ();
      d = read_int (); e = read_int (); f = read_int ();
      d = new_type (d);
      if (valid_type (d)) {
        write_event (b, d, f, c);
        xx ++;
      } else {
        fprintf (stderr, "assert: d = %d\n", d);
        for (i = -100; i < 100; i++) {
          fprintf (stderr, "%c", *(rptr + i));
        }
        fprintf (stderr, "\n");
      }
      if (verbosity && !(xx & 0xfffff)) {
        fprintf (stderr, "written %d items\n", xx);
      }

      assert (read_char () == ')');
      char c1 = read_char ();
      if (c1 == ';') {
        break;
      }
      if (c1 != ',') {
        fprintf (stderr, "assert: c = %c\n", c1);
        for (i = -100; i < 100; i++) {
          fprintf (stderr, "%c", *(rptr + i));
        }
        fprintf (stderr, "\n");

      }
      assert (c1 == ',' || c1 == '-');
    }




  }
  for (i = 0; i < log_split_mod; i++) {
    flush_write (i);
  }
  if (verbosity) {
    fprintf (stderr, "Total %d bookmarks.\n", xx);
    if (verbosity >= 2) {
      write_stat ();
    }
  }
  return 0;

}
