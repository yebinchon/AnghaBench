
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vulp ;


 scalar_t__ PYXIS_INT_MASK ;
 int mb () ;

__attribute__((used)) static inline void
pyxis_update_irq_hw(unsigned long mask)
{
 *(vulp)PYXIS_INT_MASK = mask;
 mb();
 *(vulp)PYXIS_INT_MASK;
}
