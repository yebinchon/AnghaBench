
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *ikcp_encode8u(char *p, unsigned char c)
{
 *(unsigned char*)p++ = c;
 return p;
}
