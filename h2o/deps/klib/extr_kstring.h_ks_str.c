
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* s; } ;
typedef TYPE_1__ kstring_t ;



__attribute__((used)) static inline char *ks_str(kstring_t *s)
{
 return s->s;
}
