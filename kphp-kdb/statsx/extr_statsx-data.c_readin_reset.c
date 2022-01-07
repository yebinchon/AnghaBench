
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* rBuff ;
 int rBuff_len ;
 char* rptr ;

int readin_reset (char *data, int data_len) {
  rBuff = data;
  rBuff_len = data_len;
  rptr = rBuff;
  return 0;
}
