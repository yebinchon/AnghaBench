
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_order ;

__attribute__((used)) static void do_llswap (int *R, long l) {
  long i;
  if (Q_order == -2) {
    return;
  } else if (Q_order < 0) {
    for (i = 0; i < l; i++) {
      int t = R[2*i];
      R[2*i] = R[2*i+1];
      R[2*i+1] = t;
    }
  } else if (Q_order == 2) {
    for (i = 0; i < l; i++) {
      R[2*i+1] = -R[2*i+1];
    }
  } else {
    for (i = 0; i < l; i++) {
      int t = R[2*i];
      R[2*i] = -R[2*i+1];
      R[2*i+1] = -t;
    }
  }
}
