
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int bw; } ;


 int bwrite_nbits (int *,int,int) ;

inline void list_encode_nbits (struct list_encoder *enc, int d, int n) {
  bwrite_nbits (&enc->bw, d, n);
}
