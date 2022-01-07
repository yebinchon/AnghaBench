
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sb; int filter; int * lzma2; } ;
typedef TYPE_1__ CLzma2WithFilters ;


 int SbEncInStream_Construct (int *,int ) ;
 int SeqInFilter_Construct (int *) ;
 int alloc ;

__attribute__((used)) static void Lzma2WithFilters_Construct(CLzma2WithFilters *p)
{
  p->lzma2 = ((void*)0);
  SeqInFilter_Construct(&p->filter);




}
