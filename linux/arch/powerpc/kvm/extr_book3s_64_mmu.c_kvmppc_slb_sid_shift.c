
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_slb {scalar_t__ tb; } ;


 int SID_SHIFT ;
 int SID_SHIFT_1T ;

__attribute__((used)) static int kvmppc_slb_sid_shift(struct kvmppc_slb *slbe)
{
 return slbe->tb ? SID_SHIFT_1T : SID_SHIFT;
}
