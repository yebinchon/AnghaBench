
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long CYC2NS_SCALE ;
 unsigned long long CYC2NS_SCALE_FACTOR ;

__attribute__((used)) static unsigned long long cycles2ns(unsigned long cycl)
{
 return (unsigned long long) ((unsigned long long)cycl *
   CYC2NS_SCALE) >> CYC2NS_SCALE_FACTOR;
}
