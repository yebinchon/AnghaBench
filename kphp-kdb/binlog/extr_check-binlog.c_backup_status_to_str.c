
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;


 int assert (int) ;
 int bs_differ ;
 int bs_io_error ;
 int bs_larger ;
 int bs_same_inode ;
 int sprintf (char*,char*) ;

char *backup_status_to_str (int status) {
  static char out[64];
  char *p = out;
  p[0] = p[1] = 0;
  if (status & bs_differ) {
    p += sprintf (p, "|differ");
  }
  if (status & bs_io_error) {
    p += sprintf (p, "|io_error");
  }
  if (status & bs_larger) {
    p += sprintf (p, "|larger");
  }
  if (status & bs_same_inode) {
    p += sprintf (p, "|same_inode");
  }
  assert (p < out + sizeof (out));
  return out+1;
}
