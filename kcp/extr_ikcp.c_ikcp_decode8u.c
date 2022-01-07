
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *ikcp_decode8u(const char *p, unsigned char *c)
{
 *c = *(unsigned char*)p++;
 return p;
}
