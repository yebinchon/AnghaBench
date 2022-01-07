
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct threshold_block {int address; } ;


 int WARN (int,char*,int) ;

__attribute__((used)) static const char *bank4_names(const struct threshold_block *b)
{
 switch (b->address) {

 case 0x00000413:
  return "dram";

 case 0xc0000408:
  return "ht_links";

 case 0xc0000409:
  return "l3_cache";

 default:
  WARN(1, "Funny MSR: 0x%08x\n", b->address);
  return "";
 }
}
