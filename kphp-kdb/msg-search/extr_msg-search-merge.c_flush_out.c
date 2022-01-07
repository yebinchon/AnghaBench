
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int * fd ;
 char** fnames ;
 int fprintf (int ,char*,char*,int,int) ;
 int obuff ;
 int roptr ;
 int stderr ;
 int woptr ;
 int write (int ,int,int) ;

__attribute__((used)) static void flush_out (void) {
  int res, len = woptr - roptr;
  if (len > 0) {
    res = write (fd[2], roptr, len);
    if (res < len) {
      fprintf (stderr, "error writing to %s: %d bytes written out of %d: %m\n", fnames[2], res, len);
    }
    assert (res == len);
  }
  woptr = roptr = obuff;
}
