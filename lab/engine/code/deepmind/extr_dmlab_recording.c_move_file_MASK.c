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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EXDEV ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static bool FUNC5(const char* src, const char* dest) {
  FILE* src_file;
  FILE* dest_file;

  int rename_code = FUNC3(src, dest);
  if (rename_code == 0) {
    return true;
  }

  // Continue only if it's an invalid cross-device link error.
  if (errno != EXDEV) {
    return rename_code;
  }

  // Rename failed, copy the file and delete the original.
  if (!(src_file = FUNC2(src, "r"))) {
    return false;  // 'fopen' sets errno.
  }

  if (!(dest_file = FUNC2(dest, "w"))) {
    FUNC1(src_file);
    return false;  // 'fopen' sets errno.
  }

  int copy_fp_code = FUNC0(src_file, dest_file);
  FUNC1(src_file);
  FUNC1(dest_file);

  if (copy_fp_code == 0) {
    return FUNC4(src) == 0;
  } else {
    FUNC4(dest);
    return copy_fp_code == 0;
  }
}