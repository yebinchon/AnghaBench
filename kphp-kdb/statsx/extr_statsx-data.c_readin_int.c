
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,scalar_t__) ;
 scalar_t__ rBuff ;
 scalar_t__ rBuff_len ;
 int rptr ;
 int stderr ;
 int verbosity ;

int readin_int () {
  rptr += 4;
  if (rptr - rBuff > rBuff_len) {
    if (verbosity >= 1) {
      fprintf (stderr, "Buffer size %d seems to be too small. Skipping read.\n", rBuff_len);
    }
  }
  return *(int *)(rptr - 4);
}
