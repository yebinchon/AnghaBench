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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(WCHAR* str, WCHAR* file_name, size_t file_name_len) {
  size_t str_len;

  if (str == NULL)
    return -1;

  str_len = FUNC1(str);

  /*
    Since we only care about equality, return early if the strings
    aren't the same length
  */
  if (str_len != (file_name_len / sizeof(WCHAR)))
    return -1;

  return FUNC0(str, file_name, str_len);
}