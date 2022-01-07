
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MEDIUM_REQUEST_DELAY ;
 double* REQUEST_DELAY ;
 double SLOW_REQUEST_DELAY ;
 int assert (int) ;
 double drand48 () ;
 double log (double) ;

void generate_delays (void) {
  double e = drand48 ();
  if (e < 0.1) {
    e = 0.1;
  }
  e = -log (e);
  assert (e >= 0);
  REQUEST_DELAY[0] = SLOW_REQUEST_DELAY * e;
  REQUEST_DELAY[1] = MEDIUM_REQUEST_DELAY * e;
  REQUEST_DELAY[2] = -0.1;
}
