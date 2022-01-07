
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PT_WRITABLE_MASK ;

__attribute__((used)) static inline int is_writable_pte(unsigned long pte)
{
 return pte & PT_WRITABLE_MASK;
}
