#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  baseAlloc; } ;
struct TYPE_10__ {TYPE_2__ alignOffsetAlloc; TYPE_3__* coders; void* mtc_WasConstructed; int /*<<< orphan*/  mtc; } ;
struct TYPE_7__ {int /*<<< orphan*/  vt; } ;
struct TYPE_9__ {void* dec_created; TYPE_1__ alloc; int /*<<< orphan*/  dec; } ;
typedef  TYPE_3__ CLzma2DecMtThread ;
typedef  scalar_t__ CLzma2DecMtHandle ;
typedef  TYPE_4__ CLzma2DecMt ;

/* Variables and functions */
 void* False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int MTDEC__THREADS_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(CLzma2DecMtHandle pp)
{
  CLzma2DecMt *p = (CLzma2DecMt *)pp;

  FUNC2(p);

  #ifndef _7ZIP_ST

  if (p->mtc_WasConstructed)
  {
    FUNC4(&p->mtc);
    p->mtc_WasConstructed = False;
  }
  {
    unsigned i;
    for (i = 0; i < MTDEC__THREADS_MAX; i++)
    {
      CLzma2DecMtThread *t = &p->coders[i];
      if (t->dec_created)
      {
        // we don't need to free dict here
        FUNC3(&t->dec, &t->alloc.vt); // p->alloc !!!
        t->dec_created = False;
      }
    }
  }
  FUNC1(p);

  #endif

  FUNC0(p->alignOffsetAlloc.baseAlloc, pp);
}