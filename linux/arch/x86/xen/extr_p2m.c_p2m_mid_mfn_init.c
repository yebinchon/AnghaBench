
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int P2M_MID_PER_PAGE ;
 unsigned long virt_to_mfn (unsigned long*) ;

__attribute__((used)) static void p2m_mid_mfn_init(unsigned long *mid, unsigned long *leaf)
{
 unsigned i;

 for (i = 0; i < P2M_MID_PER_PAGE; i++)
  mid[i] = virt_to_mfn(leaf);
}
