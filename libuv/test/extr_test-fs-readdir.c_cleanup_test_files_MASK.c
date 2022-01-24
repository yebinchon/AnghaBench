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
typedef  int /*<<< orphan*/  uv_fs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void) {
  uv_fs_t req;

  FUNC2(NULL, &req, "test_dir/file1", NULL);
  FUNC0(&req);
  FUNC2(NULL, &req, "test_dir/file2", NULL);
  FUNC0(&req);
  FUNC1(NULL, &req, "test_dir/test_subdir", NULL);
  FUNC0(&req);
  FUNC1(NULL, &req, "test_dir", NULL);
  FUNC0(&req);
}