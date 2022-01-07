
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIC_FLUSH_PWC ;
 int __tlbiel_pid (unsigned long,int ,int ) ;
 int __tlbiel_va_range (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static inline void _tlbiel_va_range(unsigned long start, unsigned long end,
        unsigned long pid, unsigned long page_size,
        unsigned long psize, bool also_pwc)
{
 asm volatile("ptesync": : :"memory");
 if (also_pwc)
  __tlbiel_pid(pid, 0, RIC_FLUSH_PWC);
 __tlbiel_va_range(start, end, pid, page_size, psize);
 asm volatile("ptesync": : :"memory");
}
