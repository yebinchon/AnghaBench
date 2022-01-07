
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cpu_to_le32 (unsigned long) ;
 unsigned long le32_to_cpu (unsigned long) ;

__attribute__((used)) static inline unsigned long sign_extend(unsigned long val, int len)
{
 unsigned long ret = 0;
 unsigned char *s, *t;
 int i = 0;

 val = cpu_to_le32(val);

 s = (void *)&val;
 t = (void *)&ret;

 while (i++ < len)
  *t++ = *s++;

 if (((*(t - 1)) & 0x80) && (i < 4)) {

  while (i++ <= 4)
   *t++ = 0xff;
 }

 return le32_to_cpu(ret);
}
