
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int assert (int) ;
 int close (int) ;
 int open (char const*,int,int) ;
 int write_types (int) ;

int vkext_write (const char *filename) {
  int f = open (filename, O_CREAT | O_WRONLY | O_TRUNC, 0640);
  assert (f >= 0);
  write_types (f);
  close (f);
  return 0;
}
