#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mrb_value ;
typedef  TYPE_1__* mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_8__ {int ilen; int plen; int slen; int rlen; int /*<<< orphan*/  nregs; int /*<<< orphan*/  nlocals; int /*<<< orphan*/  debug_info; struct TYPE_8__** reps; struct TYPE_8__** syms; struct TYPE_8__** pool; int /*<<< orphan*/ * iseq; scalar_t__ flags; } ;
typedef  TYPE_1__ mrb_irep ;
typedef  int /*<<< orphan*/  mrb_code ;
struct TYPE_9__ {int pc; int /*<<< orphan*/  mpool; int /*<<< orphan*/  ai; int /*<<< orphan*/  nregs; int /*<<< orphan*/  nlocals; int /*<<< orphan*/  lines; int /*<<< orphan*/ * mrb; int /*<<< orphan*/  debug_start_pos; TYPE_1__* irep; int /*<<< orphan*/  filename_index; int /*<<< orphan*/  parser; scalar_t__ filename; TYPE_1__** iseq; } ;
typedef  TYPE_4__ codegen_scope ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(codegen_scope *s)
{
  mrb_state *mrb = s->mrb;
  mrb_irep *irep = s->irep;

  irep->flags = 0;
  if (s->iseq) {
    irep->iseq = (mrb_code *)FUNC0(s, s->iseq, sizeof(mrb_code)*s->pc);
    irep->ilen = s->pc;
  }
  irep->pool = (mrb_value*)FUNC0(s, irep->pool, sizeof(mrb_value)*irep->plen);
  irep->syms = (mrb_sym*)FUNC0(s, irep->syms, sizeof(mrb_sym)*irep->slen);
  irep->reps = (mrb_irep**)FUNC0(s, irep->reps, sizeof(mrb_irep*)*irep->rlen);
  if (s->filename) {
    const char *filename = FUNC4(s->parser, s->filename_index);

    FUNC1(s->mrb, s->irep->debug_info,
                               filename, s->lines, s->debug_start_pos, s->pc);
  }
  FUNC2(s->mrb, s->lines);

  irep->nlocals = s->nlocals;
  irep->nregs = s->nregs;

  FUNC3(mrb, s->ai);
  FUNC5(s->mpool);
}