#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct lev_rotate_to {int dummy; } ;
struct lev_rotate_from {int dummy; } ;
struct TYPE_9__ {int orig_file_size; TYPE_2__* F; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_8__ {TYPE_1__* info; } ;
struct TYPE_7__ {int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 scalar_t__ io_buff ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct lev_rotate_to*,struct lev_rotate_from*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,struct lev_rotate_to*) ; 
 int FUNC5 (TYPE_3__*,scalar_t__,int) ; 

int FUNC6 (const char *src1, const char *src2) {
  stream_t A, B;
  if (FUNC3 (&A, 0, src1, 0) < 0) {
    FUNC0 ("stream open for file '%s' failed.\n", src1);
    return -1;
  }
  struct lev_rotate_to RT;
  if (FUNC4 (&A, &RT) < 0) {
    return -1;
  }
  if (FUNC3 (&B, 0, src2, 0) < 0) {
    FUNC0 ("stream open for file '%s' failed.\n", src2);
    return -1;
  }
  if (B.orig_file_size < 36) {
    FUNC0 ("file '%s' is too short.\n", src2);
    return -1;
  }
  if (FUNC5 (&B, io_buff, 36) < 36) {
    FUNC1 ("fail read %d head bytes from file '%s'", 36, B.F->info->filename);
    return -1;
  }
  if (FUNC2 (&RT, (struct lev_rotate_from *) io_buff) <= 0) {
    FUNC1 ("rotation check for files '%s' and '%s' failed.\n", src1, src2);
    return -1;
  }
  return 0;
}