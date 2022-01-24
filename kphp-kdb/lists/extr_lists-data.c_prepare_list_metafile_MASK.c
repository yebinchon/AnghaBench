#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct metafile {int dummy; } ;
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_5__ {int tot_lists; } ;
struct TYPE_4__ {int data; int next; int prev; scalar_t__ aio; } ;

/* Variables and functions */
 TYPE_3__ Header ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 scalar_t__ memory_for_metafiles ; 
 TYPE_1__** metafiles ; 
 int /*<<< orphan*/  tot_lost_aio_bytes ; 
 scalar_t__ tot_metafiles_memory ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 TYPE_1__* FUNC7 (int) ; 

int FUNC8 (list_id_t list_id, int use_aio) {
  FUNC6 (4, "preparing metafile...\n");
  while (tot_metafiles_memory > memory_for_metafiles && FUNC4 ());  
  //int x = find_metafile (list_id);
  //int x = get_list_m (E->list_id)->metafile_number;
  int x = FUNC1 (list_id);
  if (x < 0) {
    return 0;
  }
  FUNC0 (x < Header.tot_lists);
  FUNC6 (4, "preparing metafile #%d of %d\n", x, Header.tot_lists);
  if (use_aio < 0 && metafiles[x] && metafiles[x]->aio) {
    FUNC0 (metafiles[x]->data);
    tot_lost_aio_bytes += FUNC2 (x + 1) - FUNC2 (x);
    FUNC6 (0, "skipping pending aio query. Total lost memory %lld\n", tot_lost_aio_bytes);
    metafiles[x]->data = 0;
    metafiles[x]->aio = 0;
  }
  if (!metafiles[x]) {
    metafiles[x] = FUNC7 (sizeof (struct metafile));
    metafiles[x]->next = -1;
    metafiles[x]->prev = -1;
  } else {
    if (!metafiles[x]->aio && metafiles[x]->data) {
      FUNC5 (x);
      return 1;
    }
  }
  return FUNC3 (x, (use_aio > 0) || metafiles[x]->aio);  
}