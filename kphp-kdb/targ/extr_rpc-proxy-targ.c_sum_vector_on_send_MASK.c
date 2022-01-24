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
struct targ_extra {int op; int mode; int limit; int ad_id; } ;
struct gather {struct targ_extra* extra; } ;

/* Variables and functions */
#define  TL_TARG_RECENT_AD_VIEWERS 129 
#define  TL_TARG_RECENT_VIEWS_STATS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3 (struct gather *G, int num) {
  struct targ_extra *e = G->extra;
  switch (e->op) {
  case TL_TARG_RECENT_VIEWS_STATS:
    FUNC2 (e->op);
    FUNC2 (e->mode & (~1));
    FUNC2 (e->limit + 100);
    break;
  case TL_TARG_RECENT_AD_VIEWERS:
    FUNC2 (e->op);
    FUNC2 (e->ad_id);
    FUNC2 (e->mode & (~1));
    FUNC2 (e->limit);
    break;
  default:
    FUNC1 (stderr, "op = 0x%08x\n", e->op);
    FUNC0 (0);
  }
  return 0;
}