#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * MatchFinder; } ;
struct TYPE_6__ {int /*<<< orphan*/ * litProbs; } ;
struct TYPE_7__ {TYPE_1__ saveState; int /*<<< orphan*/ * litProbs; int /*<<< orphan*/  ProbPrices; int /*<<< orphan*/  g_FastPos; int /*<<< orphan*/  matchFinderBase; TYPE_3__ matchFinderMt; int /*<<< orphan*/  rc; } ;
typedef  int /*<<< orphan*/  CLzmaEncProps ;
typedef  TYPE_2__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(CLzmaEnc *p)
{
  FUNC6(&p->rc);
  FUNC5(&p->matchFinderBase);
  
  #ifndef _7ZIP_ST
  FUNC4(&p->matchFinderMt);
  p->matchFinderMt.MatchFinder = &p->matchFinderBase;
  #endif

  {
    CLzmaEncProps props;
    FUNC0(&props);
    FUNC3(p, &props);
  }

  #ifndef LZMA_LOG_BSR
  FUNC1(p->g_FastPos);
  #endif

  FUNC2(p->ProbPrices);
  p->litProbs = NULL;
  p->saveState.litProbs = NULL;

}