
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dmax; struct TYPE_6__* d; } ;
typedef TYPE_1__ BIGNUM ;


 int BN_FLG_MALLOCED ;
 int BN_FLG_STATIC_DATA ;
 int BN_get_flags (TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

void BN_clear_free(BIGNUM *a)
 {
 int i;

 if (a == ((void*)0)) return;
 if (a->d != ((void*)0))
  {
  memset(a->d,0,a->dmax*sizeof(a->d[0]));
  if (!(BN_get_flags(a,BN_FLG_STATIC_DATA)))
   free(a->d);
  }
 i=BN_get_flags(a,BN_FLG_MALLOCED);
 memset(a,0,sizeof(BIGNUM));
 if (i)
  free(a);
 }
