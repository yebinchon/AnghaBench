#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mrb_sym ;
struct TYPE_5__ {int scapa; TYPE_3__* irep; } ;
typedef  TYPE_1__ codegen_scope ;
struct TYPE_6__ {int slen; scalar_t__* syms; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC2(codegen_scope *s, mrb_sym sym)
{
  int i, len;

  FUNC1(s->irep);

  len = s->irep->slen;
  for (i=0; i<len; i++) {
    if (s->irep->syms[i] == sym) return i;
  }
  if (s->irep->slen >= s->scapa) {
    s->scapa *= 2;
    s->irep->syms = (mrb_sym*)FUNC0(s, s->irep->syms, sizeof(mrb_sym)*s->scapa);
  }
  s->irep->syms[s->irep->slen] = sym;
  return s->irep->slen++;
}