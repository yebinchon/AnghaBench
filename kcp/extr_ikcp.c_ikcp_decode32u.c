
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUINT32 ;



__attribute__((used)) static inline const char *ikcp_decode32u(const char *p, IUINT32 *l)
{






 *l = *(const IUINT32*)p;

 p += 4;
 return p;
}
