#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ ref_cnt; int /*<<< orphan*/  id; int /*<<< orphan*/ * ev_first; } ;
typedef  TYPE_1__ queue ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ event ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC6 (queue *q, char *data, int data_len, int x, int y, int ttl) {
  if (q == NULL) {
    if (verbosity > 2) {
      FUNC1 (stderr, "Queue not found.\n");
    }
    return 0;
  }

  //fix
  //dbg ("ADD EVENT: queue name = [%s], data = [%s], ttl = [%d]\n", q->name, data, ttl);

  if (q->ref_cnt != 0 || q->ev_first != NULL) {
    if (verbosity > 2) {
      FUNC1 (stderr, "  queue = %p\n", q);
    }
    event *e = FUNC0 (data_len + 1);

    FUNC2 (e->data, data, data_len + 1);

    FUNC4 (q, e);

    FUNC3 (q);
  }

  if (ttl) {
    FUNC5 (q->id, x, y, ttl, data, data_len);
  }


  return 1;
}