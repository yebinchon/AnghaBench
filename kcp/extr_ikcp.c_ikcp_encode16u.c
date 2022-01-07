
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline char *ikcp_encode16u(char *p, unsigned short w)
{




 *(unsigned short*)(p) = w;

 p += 2;
 return p;
}
