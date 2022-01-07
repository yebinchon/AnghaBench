
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUINT32 ;



__attribute__((used)) static inline char *ikcp_encode32u(char *p, IUINT32 l)
{






 *(IUINT32*)p = l;

 p += 4;
 return p;
}
