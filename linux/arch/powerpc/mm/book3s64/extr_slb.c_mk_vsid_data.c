
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __mk_vsid_data (int ,int,unsigned long) ;
 int get_kernel_vsid (unsigned long,int) ;

__attribute__((used)) static inline unsigned long mk_vsid_data(unsigned long ea, int ssize,
      unsigned long flags)
{
 return __mk_vsid_data(get_kernel_vsid(ea, ssize), ssize, flags);
}
