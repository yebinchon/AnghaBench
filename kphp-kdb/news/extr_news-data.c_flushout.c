
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buff ;
 int clearin () ;
 int fprintf (int ,char*,long) ;
 int newidx_fd ;
 int stderr ;
 scalar_t__ verbosity ;
 scalar_t__ wptr ;
 int write (int ,scalar_t__,scalar_t__) ;

void flushout (void) {
  write (newidx_fd, buff, wptr - buff);
  if (verbosity > 0) {
    fprintf (stderr, "written %ld bytes\n", (long)(wptr - buff));
  }
  clearin ();
}
