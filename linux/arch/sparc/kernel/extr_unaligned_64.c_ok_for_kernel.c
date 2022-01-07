
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int floating_point_load_or_store_p (unsigned int) ;

__attribute__((used)) static inline int ok_for_kernel(unsigned int insn)
{
 return !floating_point_load_or_store_p(insn);
}
