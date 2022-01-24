#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_4__ {int rlen; struct TYPE_4__** reps; } ;
typedef  TYPE_1__ mrb_irep ;

/* Variables and functions */
 int MRB_DUMP_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,TYPE_1__*,size_t*) ; 

__attribute__((used)) static int
FUNC1(mrb_state *mrb, const uint8_t *bin, mrb_irep *irep, size_t *lenp)
{
  int result = FUNC0(mrb, bin, irep, lenp);
  int i;

  if (result != MRB_DUMP_OK) return result;
  for (i = 0; i < irep->rlen; i++) {
    size_t len;

    result = FUNC1(mrb, bin, irep->reps[i], &len);
    if (result != MRB_DUMP_OK) break;
    bin += len;
    *lenp += len;
  }
  return result;
}