
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int P2M_TOP_PER_PAGE ;
 unsigned long* p2m_mid_missing_mfn ;

__attribute__((used)) static void p2m_top_mfn_p_init(unsigned long **top)
{
 unsigned i;

 for (i = 0; i < P2M_TOP_PER_PAGE; i++)
  top[i] = p2m_mid_missing_mfn;
}
