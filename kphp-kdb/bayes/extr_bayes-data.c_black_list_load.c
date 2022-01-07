
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int black_list_set (char*,int) ;
 int * fd ;
 int fprintf (int ,char*,int,int) ;
 int read (int ,char*,int) ;
 int stderr ;

void black_list_load (int size) {
  static char buff[1 << 20];
  assert (size < (1 << 20));

  int r = read (fd[0], buff, size);
  if (r != size) {
    fprintf (stderr, "error reading header from index file: read %d bytes instead of %d at position ???: %m\n", r, size);
    assert (r == size);
  }

  black_list_set (buff, size - 1);
}
