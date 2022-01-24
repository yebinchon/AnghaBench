#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gather_data {scalar_t__ filedata_len; int /*<<< orphan*/ * filedata; int /*<<< orphan*/ * filename; scalar_t__ key_len; int /*<<< orphan*/ * key; TYPE_1__* prev; struct gather_data* next; } ;
struct TYPE_2__ {struct gather_data* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  active_gathers ; 
 struct gather_data* active_write_threads ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gather_data*,int) ; 

void FUNC3 (struct gather_data *G) {
  if (active_write_threads == G) {
    active_write_threads = G->next;
  }
  if (G->prev) {
    G->prev->next = G->next;
  }
  if (G->next) {
    G->next->prev = G->prev;
  }

  if (G->key != NULL) {
    FUNC1 (G->key, G->key_len + 1);
  }
  if (G->filename != NULL) {
    FUNC1 (G->filename, FUNC0 (G->filename) + 1);
  }
  if (G->filedata != NULL) {
    FUNC1 (G->filedata, G->filedata_len);
  }
  FUNC2 (G, sizeof (struct gather_data));

  active_gathers--;
}