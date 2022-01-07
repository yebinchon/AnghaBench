
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clearin () ;
 int flushout () ;
 int wfd ;

void set_write_file (int write_fd) {
  flushout ();
  clearin ();
  wfd = write_fd;
}
