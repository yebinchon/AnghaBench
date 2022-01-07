
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microcode_header_intel {int rev; } ;


 int find_matching_signature (void*,unsigned int,int) ;

__attribute__((used)) static int has_newer_microcode(void *mc, unsigned int csig, int cpf, int new_rev)
{
 struct microcode_header_intel *mc_hdr = mc;

 if (mc_hdr->rev <= new_rev)
  return 0;

 return find_matching_signature(mc, csig, cpf);
}
