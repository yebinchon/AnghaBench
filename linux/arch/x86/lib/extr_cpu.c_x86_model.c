
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int x86_family (unsigned int) ;

unsigned int x86_model(unsigned int sig)
{
 unsigned int fam, model;

 fam = x86_family(sig);

 model = (sig >> 4) & 0xf;

 if (fam >= 0x6)
  model += ((sig >> 16) & 0xf) << 4;

 return model;
}
