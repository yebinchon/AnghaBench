
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; struct TYPE_5__* d; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_FREE ;
 int BN_FLG_MALLOCED ;
 int BN_FLG_STATIC_DATA ;
 int BN_get_flags (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;

void BN_free(BIGNUM *a)
 {
 if (a == ((void*)0)) return;
 if ((a->d != ((void*)0)) && !(BN_get_flags(a,BN_FLG_STATIC_DATA)))
  free(a->d);
 a->flags|=BN_FLG_FREE;
 if (a->flags & BN_FLG_MALLOCED)
  free(a);
 }
