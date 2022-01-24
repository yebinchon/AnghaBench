#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {char* x; int /*<<< orphan*/ * y; } ;
typedef  TYPE_2__ shmap_pair_string_vptr ;
struct TYPE_13__ {scalar_t__ lock; char* name; TYPE_5__* q; TYPE_1__* prev_st; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_3__ qkey ;
struct TYPE_14__ {int /*<<< orphan*/  keys_cnt; } ;
struct TYPE_11__ {int /*<<< orphan*/  ref_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_DEF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,char*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  h_qkey ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  str_memory ; 
 int verbosity ; 

void FUNC11 (qkey *k) {
  FUNC1 (k != NULL);

  FUNC3 (k);
  if (k->lock) {
    FUNC5 (LOG_DEF, 0, "trying to del locked key (%d)(key name = %s)(queue pointer = %p)(timeout = %d)!\n", k->lock, k->name, k->q, k->timeout);
    FUNC0 (k, 100);
    return;
  }
//  dl_log_add (LOG_DEF, 0, "trying to del key %p (%d)(key name = [%s]:%p)(queue pointer = %p)(timeout = %d)!\n", k, k->lock, k->name, k->name, k->q, k->timeout);

  FUNC1 (k->lock == 0);

  if (k->prev_st != NULL) {
    k->prev_st->ref_cnt--;
  }
  k->q->keys_cnt--;
  FUNC9 (k->q);

  shmap_pair_string_vptr a;
  a.y = NULL;
  a.x = k->name;

  if (verbosity > 2) {
    FUNC7 (stderr, "Key deleted : [%s]\n", k->name);
  }
  FUNC2 ("Key deleted : [%s]\n", k->name);
  FUNC10 (&h_qkey, a);


  str_memory -= FUNC4();
  FUNC6 (k->name);
  str_memory += FUNC4();

  FUNC8 (k);
}