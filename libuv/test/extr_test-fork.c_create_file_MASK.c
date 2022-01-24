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
typedef  int uv_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int O_CREAT ; 
 int O_WRONLY ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char* name) {
  int r;
  uv_file file;
  uv_fs_t req;

  r = FUNC2(NULL, &req, name, O_WRONLY | O_CREAT, S_IWUSR | S_IRUSR, NULL);
  FUNC0(r >= 0);
  file = r;
  FUNC3(&req);
  r = FUNC1(NULL, &req, file, NULL);
  FUNC0(r == 0);
  FUNC3(&req);
}