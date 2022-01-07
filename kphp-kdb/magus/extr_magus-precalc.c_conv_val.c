
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float log (double) ;

float conv_val (float val) {
  if (val < 0) {
    val = 0.0;
  }
  if (val > 1e3) {
    val = 1e3;
  }
  return log (1.0 + 3 * val);
}
