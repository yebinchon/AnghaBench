
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearin () ;
 int flushout () ;
 int rfd ;

void set_read_file (int read_fd) {
  flushout ();
  clearin ();
  rfd = read_fd;
}
