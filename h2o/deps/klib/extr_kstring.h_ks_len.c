
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t l; } ;
typedef TYPE_1__ kstring_t ;



__attribute__((used)) static inline size_t ks_len(kstring_t *s)
{
 return s->l;
}
