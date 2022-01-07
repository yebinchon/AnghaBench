
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real_pte_t ;


 unsigned long HPTES_PER_GROUP ;
 unsigned long _PTEIDX_GROUP_IX ;
 unsigned long _PTEIDX_SECONDARY ;
 unsigned long __rpte_to_hidx (int ,unsigned int) ;
 unsigned long hpt_hash (unsigned long,unsigned long,int) ;
 unsigned long htab_hash_mask ;

unsigned long pte_get_hash_gslot(unsigned long vpn, unsigned long shift,
  int ssize, real_pte_t rpte, unsigned int subpg_index)
{
 unsigned long hash, gslot, hidx;

 hash = hpt_hash(vpn, shift, ssize);
 hidx = __rpte_to_hidx(rpte, subpg_index);
 if (hidx & _PTEIDX_SECONDARY)
  hash = ~hash;
 gslot = (hash & htab_hash_mask) * HPTES_PER_GROUP;
 gslot += hidx & _PTEIDX_GROUP_IX;
 return gslot;
}
