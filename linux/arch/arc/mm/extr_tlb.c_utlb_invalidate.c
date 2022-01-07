
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_TLBCOMMAND ;
 int ARC_REG_TLBINDEX ;
 int TLBIVUTLB ;
 unsigned int TLB_LKUP_ERR ;
 unsigned int read_aux_reg (int ) ;
 scalar_t__ unlikely (unsigned int) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static void utlb_invalidate(void)
{
}
