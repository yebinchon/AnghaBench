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
typedef  int /*<<< orphan*/  uv_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const char* name) {
  int r;
  uv_file file;
  uv_fs_t req;
  uv_buf_t buf;

  r = FUNC3(NULL, &req, name, O_RDWR, 0, NULL);
  FUNC0(r >= 0);
  file = r;
  FUNC4(&req);

  buf = FUNC1("foo", 4);
  r = FUNC5(NULL, &req, file, &buf, 1, -1, NULL);
  FUNC0(r >= 0);
  FUNC4(&req);

  r = FUNC2(NULL, &req, file, NULL);
  FUNC0(r == 0);
  FUNC4(&req);
}