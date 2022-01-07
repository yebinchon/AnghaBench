
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int cpu_to_le32 (int ) ;
 int inl (unsigned long) ;

void insl (unsigned long port, void *dst, unsigned long count)
{
 unsigned int l = 0, l2;
 unsigned char *p;

 p = (unsigned char *)dst;

 if (!count)
  return;

 switch (((unsigned long) dst) & 0x3)
 {
  case 0x00:
  while (count--)
  {
   *(unsigned int *)p = cpu_to_le32(inl(port));
   p += 4;
  }
  break;

  case 0x02:
  --count;

  l = cpu_to_le32(inl(port));
  *(unsigned short *)p = l >> 16;
  p += 2;

  while (count--)
  {
   l2 = cpu_to_le32(inl(port));
   *(unsigned int *)p = (l & 0xffff) << 16 | (l2 >> 16);
   p += 4;
   l = l2;
  }
  *(unsigned short *)p = l & 0xffff;
  break;
  case 0x01:
  --count;

  l = cpu_to_le32(inl(port));
  *(unsigned char *)p = l >> 24;
  p++;
  *(unsigned short *)p = (l >> 8) & 0xffff;
  p += 2;
  while (count--)
  {
   l2 = cpu_to_le32(inl(port));
   *(unsigned int *)p = (l & 0xff) << 24 | (l2 >> 8);
   p += 4;
   l = l2;
  }
  *p = l & 0xff;
  break;
  case 0x03:
  --count;

  l = cpu_to_le32(inl(port));
  *p = l >> 24;
  p++;
  while (count--)
  {
   l2 = cpu_to_le32(inl(port));
   *(unsigned int *)p = (l & 0xffffff) << 8 | l2 >> 24;
   p += 4;
   l = l2;
  }
  *(unsigned short *)p = (l >> 8) & 0xffff;
  p += 2;
  *p = l & 0xff;
  break;
 }
}
