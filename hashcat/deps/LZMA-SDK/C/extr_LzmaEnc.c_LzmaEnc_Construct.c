
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * MatchFinder; } ;
struct TYPE_6__ {int * litProbs; } ;
struct TYPE_7__ {TYPE_1__ saveState; int * litProbs; int ProbPrices; int g_FastPos; int matchFinderBase; TYPE_3__ matchFinderMt; int rc; } ;
typedef int CLzmaEncProps ;
typedef TYPE_2__ CLzmaEnc ;


 int LzmaEncProps_Init (int *) ;
 int LzmaEnc_FastPosInit (int ) ;
 int LzmaEnc_InitPriceTables (int ) ;
 int LzmaEnc_SetProps (TYPE_2__*,int *) ;
 int MatchFinderMt_Construct (TYPE_3__*) ;
 int MatchFinder_Construct (int *) ;
 int RangeEnc_Construct (int *) ;

void LzmaEnc_Construct(CLzmaEnc *p)
{
  RangeEnc_Construct(&p->rc);
  MatchFinder_Construct(&p->matchFinderBase);


  MatchFinderMt_Construct(&p->matchFinderMt);
  p->matchFinderMt.MatchFinder = &p->matchFinderBase;


  {
    CLzmaEncProps props;
    LzmaEncProps_Init(&props);
    LzmaEnc_SetProps(p, &props);
  }


  LzmaEnc_FastPosInit(p->g_FastPos);


  LzmaEnc_InitPriceTables(p->ProbPrices);
  p->litProbs = ((void*)0);
  p->saveState.litProbs = ((void*)0);

}
