
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmp; int asize; scalar_t__ size; } ;
typedef TYPE_1__ hashsig_heap ;
typedef int hashsig_cmp ;


 int HASHSIG_HEAP_SIZE ;

__attribute__((used)) static void hashsig_heap_init(hashsig_heap *h, hashsig_cmp cmp)
{
 h->size = 0;
 h->asize = HASHSIG_HEAP_SIZE;
 h->cmp = cmp;
}
