
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_encoder {int L; int bw; } ;


 int bwrite_interpolative_sublist (int *,int ,int,int) ;

__attribute__((used)) static void interpolative_encode_sublist (struct list_encoder *enc, int u, int v) {
  bwrite_interpolative_sublist (&enc->bw, enc->L, u, v);
}
