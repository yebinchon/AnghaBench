
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic {int flags; int thiscpuregs; int reg_type; } ;


 int MPIC_FSL ;
 int MPIC_FSL_BRR1 ;
 int MPIC_FSL_BRR1_VER ;
 int _mpic_read (int ,int *,int ) ;

__attribute__((used)) static u32 fsl_mpic_get_version(struct mpic *mpic)
{
 u32 brr1;

 if (!(mpic->flags & MPIC_FSL))
  return 0;

 brr1 = _mpic_read(mpic->reg_type, &mpic->thiscpuregs,
   MPIC_FSL_BRR1);

 return brr1 & MPIC_FSL_BRR1_VER;
}
