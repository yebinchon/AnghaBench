
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_OFFSET ;

__attribute__((used)) static inline bool kernel_ip(unsigned long ip)
{



 return (long)ip < 0;

}
