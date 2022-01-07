
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE (char*) ;

__attribute__((used)) static unsigned char off8(unsigned val)
{
 if (val&3)
  DIE("offset must be multiple of four");
 if (val > 1020)
  DIE("offset too large");
 return val>>2;
}
