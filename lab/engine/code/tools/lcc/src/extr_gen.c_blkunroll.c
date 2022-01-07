
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_unaligned_load; int (* blkstore ) (int,int,int,int) ;int (* blkfetch ) (int,int,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ x; } ;


 TYPE_2__* IR ;
 int assert (int) ;
 int dalign ;
 int salign ;
 int stub1 (int,int,int,int) ;
 int stub2 (int,int,int,int) ;
 int stub3 (int,int,int,int) ;
 int stub4 (int,int,int,int) ;
 int stub5 (int,int,int,int) ;
 int stub6 (int,int,int,int) ;

__attribute__((used)) static void blkunroll(int k, int dreg, int doff, int sreg, int soff, int size, int tmp[]) {
 int i;

 assert(IR->x.max_unaligned_load);
 if (k > IR->x.max_unaligned_load
 && (k > salign || k > dalign))
  k = IR->x.max_unaligned_load;
 for (i = 0; i+k < size; i += 2*k) {
  (*IR->x.blkfetch)(k, soff+i, sreg, tmp[0]);
  (*IR->x.blkfetch)(k, soff+i+k, sreg, tmp[1]);
  (*IR->x.blkstore)(k, doff+i, dreg, tmp[0]);
  (*IR->x.blkstore)(k, doff+i+k, dreg, tmp[1]);
 }
 if (i < size) {
  (*IR->x.blkfetch)(k, i+soff, sreg, tmp[0]);
  (*IR->x.blkstore)(k, i+doff, dreg, tmp[0]);
 }
}
