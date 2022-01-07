
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
typedef TYPE_1__ kstring_t ;


 int ksplit_core (int ,int,int*,int**) ;

__attribute__((used)) static inline int *ksplit(kstring_t *s, int delimiter, int *n)
{
 int max = 0, *offsets = 0;
 *n = ksplit_core(s->s, delimiter, &max, &offsets);
 return offsets;
}
