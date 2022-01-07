
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* blkloop ) (int,int,int,int,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ x; } ;


 TYPE_2__* IR ;
 int assert (int) ;
 int blkunroll (int,int,int,int,int,int,int*) ;
 int stub1 (int,int,int,int,int,int*) ;

void blkcopy(int dreg, int doff, int sreg, int soff, int size, int tmp[]) {
 assert(size >= 0);
 if (size == 0)
  return;
 else if (size <= 2)
  blkunroll(size, dreg, doff, sreg, soff, size, tmp);
 else if (size == 3) {
  blkunroll(2, dreg, doff, sreg, soff, 2, tmp);
  blkunroll(1, dreg, doff+2, sreg, soff+2, 1, tmp);
 }
 else if (size <= 16) {
  blkunroll(4, dreg, doff, sreg, soff, size&~3, tmp);
  blkcopy(dreg, doff+(size&~3),
                 sreg, soff+(size&~3), size&3, tmp);
 }
 else
  (*IR->x.blkloop)(dreg, doff, sreg, soff, size, tmp);
}
