
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arc4random_buf (char*,size_t) ;
 scalar_t__ rand () ;
 int srand (int ) ;
 int time (int *) ;

void ws_random_buf(char *buf, size_t len) {



  static bool seeded = 0;
  if (!seeded) {
    seeded = 1;

    srand(time(((void*)0)));
  }
  size_t i;
  for (i = 0; i < len; i++) {
    buf[i] = (char)rand();
  }

}
