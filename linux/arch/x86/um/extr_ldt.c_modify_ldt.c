
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_modify_ldt ;
 int syscall (int ,int,void*,unsigned long) ;

__attribute__((used)) static inline int modify_ldt (int func, void *ptr, unsigned long bytecount)
{
 return syscall(__NR_modify_ldt, func, ptr, bytecount);
}
