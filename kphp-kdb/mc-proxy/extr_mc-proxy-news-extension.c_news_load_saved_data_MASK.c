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
struct keep_mc_store {int magic; scalar_t__ len; scalar_t__ user_id; } ;
struct connection {int /*<<< orphan*/  Tmp; } ;
typedef  int /*<<< orphan*/  nb_iterator_t ;

/* Variables and functions */
 scalar_t__ MAX_QUERY ; 
 scalar_t__ NEWS_G_EXTENSION ; 
 int NEWS_STORE_MAGIC ; 
 scalar_t__ NEWS_UG_EXTENSION ; 
 int QLsave ; 
 struct keep_mc_store* Qsave ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct keep_mc_store mc_store ; 
 int FUNC1 (int /*<<< orphan*/ *,struct keep_mc_store*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ uidsave ; 

void FUNC3 (struct connection *c) {
  struct keep_mc_store *Data = 0;
  
  if (!c->Tmp) { 
    uidsave = 0;
    return;
  }

  nb_iterator_t R;
  FUNC2 (&R, c->Tmp);
  int l = FUNC1 (&R, &mc_store, sizeof (struct keep_mc_store));
  if (l != sizeof (struct keep_mc_store)) {
    uidsave = 0;
    return; 
  }
  Data = &mc_store;
  FUNC0 (Data->magic = NEWS_STORE_MAGIC);

  QLsave = 0;
  uidsave = Data->user_id;

  QLsave = (Data->len < MAX_QUERY ? Data->len : MAX_QUERY);
  if ((NEWS_UG_EXTENSION || NEWS_G_EXTENSION)) {
    FUNC0 (FUNC1 (&R, Qsave, QLsave * 4) == QLsave * 4);
  } else {
    FUNC0 (FUNC1 (&R, Qsave, QLsave * 12) == QLsave * 12);
  }

  //free_tmp_buffers (c);
}