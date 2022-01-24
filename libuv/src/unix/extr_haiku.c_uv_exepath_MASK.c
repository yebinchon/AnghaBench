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
typedef  scalar_t__ status_t ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  abspath ;

/* Variables and functions */
 int /*<<< orphan*/  B_APP_IMAGE_SYMBOL ; 
 int /*<<< orphan*/  B_FIND_PATH_IMAGE_PATH ; 
 scalar_t__ B_OK ; 
 int B_PATH_NAME_LENGTH ; 
 int UV_EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC2 (char*,char*,size_t) ; 

int FUNC3(char* buffer, size_t* size) {
  char abspath[B_PATH_NAME_LENGTH];
  status_t status;
  ssize_t abspath_len;

  if (buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  status = FUNC1(B_APP_IMAGE_SYMBOL, B_FIND_PATH_IMAGE_PATH, NULL, abspath,
                     sizeof(abspath));
  if (status != B_OK)
    return FUNC0(status);

  abspath_len = FUNC2(buffer, abspath, *size);
  *size -= 1;
  if (abspath_len >= 0 && *size > (size_t)abspath_len)
    *size = (size_t)abspath_len;

  return 0;
}