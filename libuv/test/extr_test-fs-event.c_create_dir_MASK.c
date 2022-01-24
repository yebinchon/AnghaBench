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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int UV_EEXIST ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const char* name) {
  int r;
  uv_fs_t req;
  r = FUNC1(NULL, &req, name, 0755, NULL);
  FUNC0(r == 0 || r == UV_EEXIST);
  FUNC2(&req);
}