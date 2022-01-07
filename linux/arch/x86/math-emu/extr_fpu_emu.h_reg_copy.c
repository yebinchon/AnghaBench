
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sigl; int exp; } ;
typedef TYPE_1__ FPU_REG ;



__attribute__((used)) static inline void reg_copy(FPU_REG const *x, FPU_REG *y)
{
 *(short *)&(y->exp) = *(const short *)&(x->exp);
 *(long long *)&(y->sigl) = *(const long long *)&(x->sigl);
}
