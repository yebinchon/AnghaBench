
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EINVAL ;
 int RTAS_FADUMP_GPR_MASK ;
 int fadump_str_to_u64 (char*) ;
 scalar_t__ kstrtoint (char*,int,int*) ;

__attribute__((used)) static inline int rtas_fadump_gpr_index(u64 id)
{
 char str[3];
 int i = -1;

 if ((id & RTAS_FADUMP_GPR_MASK) == fadump_str_to_u64("GPR")) {

  id &= ~RTAS_FADUMP_GPR_MASK;
  id >>= 24;
  str[2] = '\0';
  str[1] = id & 0xff;
  str[0] = (id >> 8) & 0xff;
  if (kstrtoint(str, 10, &i))
   i = -EINVAL;
  if (i > 31)
   i = -1;
 }
 return i;
}
