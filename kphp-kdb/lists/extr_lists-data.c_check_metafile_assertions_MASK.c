#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ flags; scalar_t__ tot_entries; } ;
typedef  TYPE_1__ metafile_t ;
typedef  int /*<<< orphan*/  list_id_t ;
struct TYPE_9__ {scalar_t__ flags; } ;
struct TYPE_8__ {int tot_lists; } ;

/* Variables and functions */
 scalar_t__ FILE_LIST_MAGIC ; 
 TYPE_6__* FUNC0 (int) ; 
 TYPE_5__ Header ; 
 unsigned int MAX_METAFILE_ENTRIES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6 (list_id_t list_id, int l) {
  FUNC3 (0 <= l && l < Header.tot_lists);
  metafile_t *M = FUNC4 (l);
  FUNC3 (FUNC2(M) == FILE_LIST_MAGIC && FUNC5 (FUNC1(M), list_id));
  FUNC3 (M->flags == FUNC0(l)->flags);
  FUNC3 ((unsigned) M->tot_entries <= MAX_METAFILE_ENTRIES);
  return 0;
}