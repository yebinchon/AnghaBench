
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCLOCK_HVCLOCK ;
 int VCLOCK_TSC ;

__attribute__((used)) static inline int gtod_is_based_on_tsc(int mode)
{
 return mode == VCLOCK_TSC || mode == VCLOCK_HVCLOCK;
}
