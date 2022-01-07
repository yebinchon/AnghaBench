
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tlbiel_hash_set_isa206 (unsigned int,unsigned int) ;

__attribute__((used)) static void tlbiel_all_isa206(unsigned int num_sets, unsigned int is)
{
 unsigned int set;

 asm volatile("ptesync": : :"memory");

 for (set = 0; set < num_sets; set++)
  tlbiel_hash_set_isa206(set, is);

 asm volatile("ptesync": : :"memory");
}
