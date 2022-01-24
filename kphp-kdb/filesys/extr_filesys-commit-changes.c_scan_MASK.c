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

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const* const,double) ; 
 scalar_t__ FUNC2 (char const* const) ; 
 int /*<<< orphan*/  copy_file ; 
 int /*<<< orphan*/  copy_file_cloning_mode ; 
 int /*<<< orphan*/  copy_file_po_mode ; 
 int FUNC3 (char const* const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ events ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ faults ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (double,int) ; 
 double FUNC9 () ; 
 int /*<<< orphan*/  new_dir ; 
 int new_dir_length ; 
 int /*<<< orphan*/  old_dir ; 
 int old_dir_length ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (double,char const* const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int,int*) ; 
 int FUNC14 (double,char const* const) ; 
 scalar_t__ FUNC15 (double) ; 
 scalar_t__ status ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char const* const) ; 
 int FUNC17 (char const* const) ; 
 double tmp_dir ; 
 scalar_t__ use_clone ; 
 int /*<<< orphan*/  FUNC18 (int,char*,double) ; 

__attribute__((used)) static int FUNC19 (const char *const old, const char *const new) {
  faults = 0;
  if (!status) {
    if (FUNC2 (old) < 0) {
      FUNC7 ("compute_tmp_dir_name fail.\n");
      FUNC6 (1);
    }
    FUNC18 (1, "Temporary directory name: %s\n", tmp_dir);
    if (use_clone) {
      double t = -FUNC9 ();
      int r = FUNC1 (old, tmp_dir);
      if (r < 0) {
        FUNC7 ("clone_file (%s, %s) returns error code %d.\n", old, tmp_dir, r);
        FUNC6 (1);
      }
      t += FUNC9 ();
      FUNC18 (1, "Cloning master copy time = %.6lf seconds.\n", t);
      copy_file = copy_file_cloning_mode;
    } else {
      FUNC11 (tmp_dir, old);
      FUNC12 (0);
      if (FUNC8 (tmp_dir, 0770) < 0) {
        FUNC7 ("mkdir (%s, 0770) failed. %m\n", tmp_dir);
        FUNC6 (1);
      }
      copy_file = copy_file_po_mode;
    }
    FUNC4 ();
  }
  old_dir_length = FUNC17 (old);
  FUNC0 (old_dir_length < PATH_MAX-1);
  FUNC16 (old_dir, old);
  new_dir_length = FUNC17 (new);
  FUNC0 (new_dir_length < PATH_MAX-1);
  FUNC16 (new_dir, new);
  int changed;
  FUNC13 (old_dir_length, new_dir_length, &changed);

  if (!status) {
    FUNC5 ();
    if (!faults) {
      if (use_clone) {
        int r = FUNC3 (old);
        if (r) {
          FUNC7 ("delete_file (%s) returns error code %d.\n", old, r);
          return -1;
        }
        r = FUNC14 (tmp_dir, old);
        if (r) {
          FUNC7 ("rename (%s, %s) returns error code %d.\n", tmp_dir, old, r);
          return -2;
        }
      } else {
        FUNC10 ();
        if (FUNC15 (tmp_dir) < 0) {
          FUNC7 ("rmdir (%s) failed. %m\n", tmp_dir);
        }
      }
    }
  }
  return (faults == 0 && (status || events > 0)) ? 0 : -1;
}