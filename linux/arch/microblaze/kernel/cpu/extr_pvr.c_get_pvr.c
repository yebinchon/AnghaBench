
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr_s {int * pvr; } ;


 int get_single_pvr (int,int ) ;

void get_pvr(struct pvr_s *p)
{
 get_single_pvr(0, p->pvr[0]);
 get_single_pvr(1, p->pvr[1]);
 get_single_pvr(2, p->pvr[2]);
 get_single_pvr(3, p->pvr[3]);
 get_single_pvr(4, p->pvr[4]);
 get_single_pvr(5, p->pvr[5]);
 get_single_pvr(6, p->pvr[6]);
 get_single_pvr(7, p->pvr[7]);
 get_single_pvr(8, p->pvr[8]);
 get_single_pvr(9, p->pvr[9]);
 get_single_pvr(10, p->pvr[10]);
 get_single_pvr(11, p->pvr[11]);
}
