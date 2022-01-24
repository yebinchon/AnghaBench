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
struct TYPE_2__ {int /*<<< orphan*/  st_mode; } ;
struct pending_operation {char* oldpath; char* newpath; int type; TYPE_1__ st; } ;

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* po_newdir ; 
 char* po_olddir ; 
#define  pot_copy_attrs 133 
#define  pot_mkdir 132 
#define  pot_null 131 
#define  pot_remove 130 
#define  pot_rename 129 
#define  pot_symlink 128 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

void FUNC10 (struct pending_operation *P) {
  char full_oldpath[PATH_MAX], full_newpath[PATH_MAX];
  full_oldpath[0] = full_newpath[0] = 0;
  if (P->oldpath) {
    FUNC1 (FUNC8 (full_oldpath, PATH_MAX, "%s/%s", po_olddir, P->oldpath) < PATH_MAX);
  }
  if (P->newpath) {
    FUNC1 (FUNC8 (full_newpath, PATH_MAX, "%s/%s", po_newdir, P->newpath) < PATH_MAX);
  }
  switch (P->type) {
    case pot_null:
      FUNC4 ("pending_operation_apply (P.type == pot_null)\n");
      FUNC3 (1);
      break;
    case pot_mkdir:
      FUNC0 (FUNC6 (full_newpath, P->st.st_mode));
      FUNC0 (FUNC5 (full_newpath, &P->st));
      break;
    case pot_symlink:
      FUNC0 (FUNC9 (P->oldpath, full_newpath));
      FUNC0 (FUNC5 (full_newpath, &P->st));
      break;
    case pot_rename:
      FUNC0 (FUNC7 (full_oldpath, full_newpath));
      FUNC0 (FUNC5 (full_newpath, &P->st));
      break;
    case pot_remove:
      FUNC0 (FUNC2 (full_newpath));
      break;
    case pot_copy_attrs:
      FUNC0 (FUNC5 (full_newpath, &P->st));
      break;
  }
}