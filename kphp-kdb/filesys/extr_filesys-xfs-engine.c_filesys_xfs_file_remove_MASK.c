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
struct lev_filesys_rmdir {int dirpath_size; int /*<<< orphan*/  dirpath; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pot_remove ; 

__attribute__((used)) static void FUNC4 (struct lev_filesys_rmdir *E) {
  char name[PATH_MAX];
  FUNC0 (E->dirpath_size < PATH_MAX);
  FUNC1 (name, E->dirpath, E->dirpath_size);
  name[E->dirpath_size] = 0;
  FUNC3 (FUNC2 (pot_remove, NULL, name, NULL));
}