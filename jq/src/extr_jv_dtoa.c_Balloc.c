
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dtoa_context {TYPE_1__** freelist; } ;
typedef int ULong ;
struct TYPE_3__ {int k; int maxwds; scalar_t__ wds; scalar_t__ sign; struct TYPE_3__* next; } ;
typedef TYPE_1__ Bigint ;


 int Kmax ;
 scalar_t__ MALLOC (int) ;

__attribute__((used)) static Bigint *
 Balloc(struct dtoa_context* C, int k)
{
 int x;
 Bigint *rv;



 if (k <= Kmax && (rv = C->freelist[k]))
  C->freelist[k] = rv->next;
 else {
  x = 1 << k;
  rv = (Bigint *)MALLOC(sizeof(Bigint) + (x-1)*sizeof(ULong));
  rv->k = k;
  rv->maxwds = x;
  }
 rv->sign = rv->wds = 0;
 return rv;
 }
