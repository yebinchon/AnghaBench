
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;



__attribute__((used)) static inline void copy_buffer(void *from, void *to)
{
 ulong *p1 = (ulong *)from, *p2 = (ulong *)to;
 int cnt;

 for (cnt = 512/4; cnt; cnt--)
  *p2++ = *p1++;
}
