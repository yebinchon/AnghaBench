#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tl_act_extra {int flags; int size; int /*<<< orphan*/  act; } ;

/* Variables and functions */
 int TL_ENGINE_NOP ; 
 int TL_ENGINE_STAT ; 
 struct tl_act_extra* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct tl_act_extra*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tl_act_nop ; 
 int /*<<< orphan*/  tl_act_stat ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 

struct tl_act_extra *FUNC6 (long long actor_id) {
  if (actor_id) { 
    return 0; 
  }
  int f = FUNC5 ();
  if (FUNC3 ()) {
    return 0;
  }
  if (f == TL_ENGINE_NOP) {
    FUNC4 ();
    FUNC2 ();
    if (FUNC3 ()) {
      return 0;
    }
    struct tl_act_extra *extra = FUNC0 (sizeof (*extra));
    FUNC1 (extra, 0, sizeof (*extra));
    extra->flags = 3;
    extra->size = sizeof (*extra);
    extra->act = tl_act_nop;
    return extra;
  }
  if (f == TL_ENGINE_STAT) {
    FUNC4 ();
    FUNC2 ();
    if (FUNC3 ()) {
      return 0;
    }
    struct tl_act_extra *extra = FUNC0 (sizeof (*extra));
    FUNC1 (extra, 0, sizeof (*extra));
    extra->flags = 3;
    extra->size = sizeof (*extra);
    extra->act = tl_act_stat;
    return extra;
  }
  return 0;
}