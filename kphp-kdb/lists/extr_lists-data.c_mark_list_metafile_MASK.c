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
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_2__ {scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 long long FUNC3 (int) ; 
 TYPE_1__** metafiles ; 
 int /*<<< orphan*/  metafiles_marked ; 
 long long tot_metafiles_marked_memory ; 
 long long tot_metafiles_memory ; 

int FUNC4 (list_id_t list_id) {
  //int x = find_metafile (list_id);
  //int x = get_list_m (E->list_id)->metafile_number;
  int x = FUNC2 (list_id);
  FUNC0 (x >= 0);
  //if (x < 0) {
  //  return 0;
  //}
  if (metafiles[x]->prev >= 0) {
    long long size = FUNC3 (x + 1) - FUNC3 (x);
    tot_metafiles_memory -= size;
    tot_metafiles_marked_memory += size;
    FUNC1 (x);
    metafiles_marked ++;
    return 1;
  }          
  return 0;
}