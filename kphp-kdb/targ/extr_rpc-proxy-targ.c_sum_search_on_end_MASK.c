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
struct targ_extra {int mode; int limit; } ;
struct gather {int tot_num; TYPE_1__* List; struct targ_extra* extra; } ;
struct TYPE_5__ {int /*<<< orphan*/  views; int /*<<< orphan*/  ad_id; } ;
typedef  TYPE_2__ gh_entry_t ;
struct TYPE_4__ {scalar_t__ bytes; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GH_total ; 
 int /*<<< orphan*/  TL_VECTOR_TOTAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct gather*) ; 
 scalar_t__ FUNC6 (struct gather*) ; 
 int /*<<< orphan*/  received_bad_answers ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC10 (struct targ_extra*,int) ; 

void FUNC11 (struct gather *G) {
  struct targ_extra *e = G->extra;
  if (FUNC6 (G) < 0) {
    FUNC10 (e, sizeof (*e));
    FUNC5 (G);
    return;
  }
//  int Q_limit = e->limit;
  int Q_order = (e->mode & 7) | 16;
  if (!(Q_order & 1)) {
    Q_order |= 8;
  }
  FUNC0 (Q_order);
 
  int i;
  for (i = 0; i < G->tot_num; i++) if (G->List[i].bytes >= 0) {
    int res = FUNC3 (G->List[i].data, G->List[i].bytes);
    if (res < 0) {
      received_bad_answers ++;
    }
  } else {
    if (verbosity >= 4) {
      FUNC1 (stderr, "Dropping result %d (num = %ld)\n", i, G->List[i].bytes);
    }
  }

  FUNC9 (TL_VECTOR_TOTAL);
  FUNC9 (GH_total);
  int *cur = FUNC8 (4);
  *cur = 0;
  

  while (1) {
    if (*cur >= e->limit) { break; }
    gh_entry_t *H = FUNC4 ();
    if (!H) { break; }
    
    FUNC9 (H->ad_id);
    if (!(Q_order & 8)) {
      FUNC9 (H->views);
    }
    (*cur) ++;
    FUNC2 ();
  }
  FUNC7 ();
  FUNC10 (e, sizeof (*e));
  FUNC5 (G);
  return;
}