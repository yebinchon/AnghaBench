
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef unsigned long u16 ;
struct TYPE_2__ {int value; } ;
struct insn {int opnd_bytes; TYPE_1__ modrm; } ;


 unsigned long CR0_STATE ;
 int EINVAL ;
 unsigned long UMIP_DUMMY_GDT_BASE ;
 unsigned long UMIP_DUMMY_IDT_BASE ;
 int UMIP_GDT_IDT_BASE_SIZE_32BIT ;
 int UMIP_GDT_IDT_BASE_SIZE_64BIT ;
 int UMIP_GDT_IDT_LIMIT_SIZE ;
 int UMIP_INST_SGDT ;
 int UMIP_INST_SIDT ;
 int UMIP_INST_SMSW ;
 int X86_MODRM_MOD (int ) ;
 int memcpy (unsigned char*,unsigned long*,int) ;

__attribute__((used)) static int emulate_umip_insn(struct insn *insn, int umip_inst,
        unsigned char *data, int *data_size, bool x86_64)
{
 if (!data || !data_size || !insn)
  return -EINVAL;
 if (umip_inst == UMIP_INST_SGDT || umip_inst == UMIP_INST_SIDT) {
  u64 dummy_base_addr;
  u16 dummy_limit = 0;


  if (X86_MODRM_MOD(insn->modrm.value) == 3)
   return -EINVAL;

  if (umip_inst == UMIP_INST_SGDT)
   dummy_base_addr = UMIP_DUMMY_GDT_BASE;
  else
   dummy_base_addr = UMIP_DUMMY_IDT_BASE;







  if (x86_64)
   *data_size = UMIP_GDT_IDT_BASE_SIZE_64BIT;
  else
   *data_size = UMIP_GDT_IDT_BASE_SIZE_32BIT;

  memcpy(data + 2, &dummy_base_addr, *data_size);

  *data_size += UMIP_GDT_IDT_LIMIT_SIZE;
  memcpy(data, &dummy_limit, UMIP_GDT_IDT_LIMIT_SIZE);

 } else if (umip_inst == UMIP_INST_SMSW) {
  unsigned long dummy_value = CR0_STATE;
  if (X86_MODRM_MOD(insn->modrm.value) == 3)
   *data_size = insn->opnd_bytes;
  else
   *data_size = 2;

  memcpy(data, &dummy_value, *data_size);

 } else {
  return -EINVAL;
 }

 return 0;
}
