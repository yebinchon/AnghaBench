
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
struct TYPE_3__ {int maxwds; int k; } ;
typedef TYPE_1__ Bigint ;


 int Bfree (struct dtoa_context*,TYPE_1__*) ;

void
jvp_freedtoa(struct dtoa_context* C, char *s)
{
 Bigint *b = (Bigint *)((int *)s - 1);
 b->maxwds = 1 << (b->k = *(int*)b);
 Bfree(C, b);
 }
