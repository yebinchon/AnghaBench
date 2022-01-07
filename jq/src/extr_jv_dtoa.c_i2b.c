
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dtoa_context {int dummy; } ;
struct TYPE_4__ {int* x; int wds; } ;
typedef TYPE_1__ Bigint ;


 TYPE_1__* Balloc (struct dtoa_context*,int) ;

__attribute__((used)) static Bigint *
i2b
 (struct dtoa_context* C, int i)
{
 Bigint *b;

 b = Balloc(C, 1);
 b->x[0] = i;
 b->wds = 1;
 return b;
 }
