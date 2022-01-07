
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,int) ;
 int memcpy (char*,int,int) ;
 int rBuff ;
 int rBuff_len ;
 int rptr ;
 int stderr ;
 int verbosity ;

int readin (char *dst, int len) {
  if (rptr - rBuff > rBuff_len - len) {
    if (verbosity >= 1) {
      fprintf (stderr, "Buffer size %d seems to be too small. Skipping read.\n", rBuff_len);
    }
    return 0;
  }
  memcpy (dst, rptr, len);
  rptr += len;
  return len;
}
