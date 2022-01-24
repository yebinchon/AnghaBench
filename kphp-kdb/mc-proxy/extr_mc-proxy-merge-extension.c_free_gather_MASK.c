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
struct gather_data {int magic; int tot_num; scalar_t__ size; scalar_t__ new_key_len; struct gather_data* new_key; scalar_t__ orig_key_len; struct gather_data* orig_key; TYPE_1__* List; scalar_t__ extra; } ;
struct TYPE_2__ {scalar_t__ res_bytes; struct gather_data* data; } ;

/* Variables and functions */
 int GD_MAGIC ; 
 int GD_MAGIC_MASK ; 
 scalar_t__ active_gathers ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct gather_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC3 (struct gather_data*,scalar_t__) ; 

__attribute__((used)) static void FUNC4 (struct gather_data *G) {
  if (!G) {
    return;
  }
  FUNC0 ((G->magic & GD_MAGIC_MASK) == GD_MAGIC);
  if (G->extra) {
    FUNC2 (G->extra);
  }

  G->magic = 0;
  FUNC0 (active_gathers > 0);
  if (verbosity >= 2) {
    FUNC1 (stderr, "Gather structure %p freed.\n", G);
  }

  int i;
  for (i = 0; i < G->tot_num; i++) {
    if (G->List[i].res_bytes) {
      FUNC3 (G->List[i].data, G->List[i].res_bytes + 4);
    }
  }
  FUNC3 (G->orig_key, G->orig_key_len + 1);  
  FUNC3 (G->new_key, G->new_key_len + 1);
  FUNC3 (G, G->size);
  active_gathers--;
}