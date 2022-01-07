
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum aarch64_reloc_op { ____Placeholder_aarch64_reloc_op } aarch64_reloc_op ;
typedef int __le32 ;






 int pr_err (char*,int) ;

__attribute__((used)) static u64 do_reloc(enum aarch64_reloc_op reloc_op, __le32 *place, u64 val)
{
 switch (reloc_op) {
 case 131:
  return val;
 case 128:
  return val - (u64)place;
 case 129:
  return (val & ~0xfff) - ((u64)place & ~0xfff);
 case 130:
  return 0;
 }

 pr_err("do_reloc: unknown relocation operation %d\n", reloc_op);
 return 0;
}
