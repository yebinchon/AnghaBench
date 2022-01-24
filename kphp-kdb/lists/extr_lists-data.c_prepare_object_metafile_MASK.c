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
typedef  int /*<<< orphan*/  object_id_t ;
struct TYPE_5__ {long tot_lists; } ;
struct TYPE_4__ {int data; int next; int prev; scalar_t__ aio; } ;

/* Variables and functions */
 TYPE_3__ Header ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  head_metafile ; 
 int FUNC3 (int,int) ; 
 scalar_t__ memory_for_metafiles ; 
 TYPE_1__** metafiles ; 
 int /*<<< orphan*/  tot_lost_aio_bytes ; 
 scalar_t__ tot_metafiles_memory ; 
 long tot_revlist_metafiles ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 TYPE_1__* FUNC7 (int) ; 

int FUNC8 (object_id_t object_id, int use_aio) {
  long rm = FUNC1 (object_id);
  if (rm >= tot_revlist_metafiles) {
    return 0;
  }
  FUNC0 (rm >= 0);
  while (tot_metafiles_memory > memory_for_metafiles && FUNC4 ());  

  int x = rm + Header.tot_lists + 1;
  FUNC6 (3, "prepare_object_metafile: x = %d, head_metafile = %d\n", x, head_metafile);
  if (use_aio < 0 && metafiles[x] && metafiles[x]->aio) {
    FUNC0 (metafiles[x]->data);
    tot_lost_aio_bytes += FUNC2 (x - Header.tot_lists) - FUNC2 (x - Header.tot_lists - 1);
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