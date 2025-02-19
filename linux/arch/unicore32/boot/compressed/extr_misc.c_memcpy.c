
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *dest, const void *src, size_t n)
{
 int i = 0;
 unsigned char *d = (unsigned char *)dest, *s = (unsigned char *)src;

 for (i = n >> 3; i > 0; i--) {
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
 }

 if (n & 1 << 2) {
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
  *d++ = *s++;
 }

 if (n & 1 << 1) {
  *d++ = *s++;
  *d++ = *s++;
 }

 if (n & 1)
  *d++ = *s++;

 return dest;
}
