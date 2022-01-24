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
struct keep_mc_store {int magic; scalar_t__ len; scalar_t__ tag; } ;
struct connection {int /*<<< orphan*/  Tmp; } ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 scalar_t__ MAX_QUERY ; 
 int NEWSR_STORE_MAGIC ; 
 int QLsave ; 
 struct keep_mc_store* Qsave ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct keep_mc_store mc_store ; 
 int FUNC1 (int /*<<< orphan*/ *,struct keep_mc_store*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ tagsave ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 

void FUNC4 (struct connection *c) {
  struct keep_mc_store *Data = 0;
  
  if (!c->Tmp) {
    tagsave = 0;
    FUNC3 (4, "newsr_load_saved_data: !c->Tmp\n");
    return;
  }

  nb_iterator_t R;
  FUNC2 (&R, c->Tmp);
  int l = FUNC1 (&R, &mc_store, sizeof (struct keep_mc_store));
  if (l != sizeof (struct keep_mc_store)) {
    tagsave = 0;
    FUNC3 (4, "newsr_load_saved_data: l = %d\n", l);
    return;
  }
  Data = &mc_store;
  FUNC0 (Data->magic = NEWSR_STORE_MAGIC);

  QLsave = 0;
  tagsave = Data->tag;

  QLsave = (Data->len < MAX_QUERY ? Data->len : MAX_QUERY);
  FUNC0 (FUNC1 (&R, Qsave, QLsave * 8) == QLsave * 8);
}