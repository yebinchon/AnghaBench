#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  alloc; int /*<<< orphan*/ * tempBufLzma; scalar_t__ mtCoder_WasConstructed; int /*<<< orphan*/  mtCoder; int /*<<< orphan*/  allocBig; TYPE_1__* coders; } ;
struct TYPE_4__ {int /*<<< orphan*/ * enc; } ;
typedef  TYPE_1__ CLzma2EncInt ;
typedef  int /*<<< orphan*/ * CLzma2EncHandle ;
typedef  TYPE_2__ CLzma2Enc ;

/* Variables and functions */
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int MTCODER__THREADS_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(CLzma2EncHandle pp)
{
  CLzma2Enc *p = (CLzma2Enc *)pp;
  unsigned i;
  for (i = 0; i < MTCODER__THREADS_MAX; i++)
  {
    CLzma2EncInt *t = &p->coders[i];
    if (t->enc)
    {
      FUNC2(t->enc, p->alloc, p->allocBig);
      t->enc = NULL;
    }
  }


  #ifndef _7ZIP_ST
  if (p->mtCoder_WasConstructed)
  {
    FUNC3(&p->mtCoder);
    p->mtCoder_WasConstructed = False;
  }
  FUNC1(p);
  #endif

  FUNC0(p->alloc, p->tempBufLzma);
  p->tempBufLzma = NULL;

  FUNC0(p->alloc, pp);
}