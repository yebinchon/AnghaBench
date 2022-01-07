
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef void* s64 ;
typedef void* s32 ;
typedef void* s16 ;
typedef enum aarch64_reloc_op { ____Placeholder_aarch64_reloc_op } aarch64_reloc_op ;


 int ERANGE ;


 void* S16_MAX ;
 void* S16_MIN ;
 void* S32_MAX ;
 void* S32_MIN ;
 void* U16_MAX ;
 void* U32_MAX ;
 void* do_reloc (int,void*,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
{
 s64 sval = do_reloc(op, place, val);
 switch (len) {
 case 16:
  *(s16 *)place = sval;
  switch (op) {
  case 129:
   if (sval < 0 || sval > U16_MAX)
    return -ERANGE;
   break;
  case 128:
   if (sval < S16_MIN || sval > S16_MAX)
    return -ERANGE;
   break;
  default:
   pr_err("Invalid 16-bit data relocation (%d)\n", op);
   return 0;
  }
  break;
 case 32:
  *(s32 *)place = sval;
  switch (op) {
  case 129:
   if (sval < 0 || sval > U32_MAX)
    return -ERANGE;
   break;
  case 128:
   if (sval < S32_MIN || sval > S32_MAX)
    return -ERANGE;
   break;
  default:
   pr_err("Invalid 32-bit data relocation (%d)\n", op);
   return 0;
  }
  break;
 case 64:
  *(s64 *)place = sval;
  break;
 default:
  pr_err("Invalid length (%d) for data relocation\n", len);
  return 0;
 }
 return 0;
}
