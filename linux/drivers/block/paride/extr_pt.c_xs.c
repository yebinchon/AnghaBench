
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void xs(char *buf, char *targ, int offs, int len)
{
 int j, k, l;

 j = 0;
 l = 0;
 for (k = 0; k < len; k++)
  if ((buf[k + offs] != 0x20) || (buf[k + offs] != l))
   l = targ[j++] = buf[k + offs];
 if (l == 0x20)
  j--;
 targ[j] = 0;
}
