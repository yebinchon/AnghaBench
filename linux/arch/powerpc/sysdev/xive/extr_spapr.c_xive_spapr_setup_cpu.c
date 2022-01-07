
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xive_cpu {int dummy; } ;


 scalar_t__ TM_QW1_OS ;
 scalar_t__ TM_WORD0 ;
 scalar_t__ TM_WORD1 ;
 scalar_t__ TM_WORD2 ;
 int in_be32 (scalar_t__) ;
 int pr_debug (char*,int ,int ,int ) ;
 scalar_t__ xive_tima ;

__attribute__((used)) static void xive_spapr_setup_cpu(unsigned int cpu, struct xive_cpu *xc)
{

 pr_debug("(HW value: %08x %08x %08x)\n",
   in_be32(xive_tima + TM_QW1_OS + TM_WORD0),
   in_be32(xive_tima + TM_QW1_OS + TM_WORD1),
   in_be32(xive_tima + TM_QW1_OS + TM_WORD2));
}
