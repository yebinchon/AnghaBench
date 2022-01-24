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
struct TYPE_6__ {int /*<<< orphan*/  baseAlloc; } ;
struct TYPE_8__ {TYPE_1__ alignOffsetAlloc; TYPE_2__* coders; void* mtc_WasConstructed; int /*<<< orphan*/  mtc; } ;
struct TYPE_7__ {void* dec_created; int /*<<< orphan*/  dec; } ;
typedef  TYPE_2__ CXzDecMtThread ;
typedef  scalar_t__ CXzDecMtHandle ;
typedef  TYPE_3__ CXzDecMt ;

/* Variables and functions */
 void* False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int MTDEC__THREADS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(CXzDecMtHandle pp)
{
  CXzDecMt *p = (CXzDecMt *)pp;

  FUNC3(p);

  #ifndef _7ZIP_ST

  if (p->mtc_WasConstructed)
  {
    FUNC1(&p->mtc);
    p->mtc_WasConstructed = False;
  }
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CXzDecMtThread *t = &p->coders[i];
      if (t->dec_created)
      {
        // we don't need to free dict here
        FUNC4(&t->dec);
        t->dec_created = False;
      }
    }
  }
  FUNC2(p);

  #endif

  FUNC0(p->alignOffsetAlloc.baseAlloc, pp);
}