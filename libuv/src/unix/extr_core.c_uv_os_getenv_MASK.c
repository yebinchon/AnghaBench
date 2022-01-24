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
 int UV_EINVAL ; 
 int UV_ENOBUFS ; 
 int UV_ENOENT ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char*) ; 

int FUNC3(const char* name, char* buffer, size_t* size) {
  char* var;
  size_t len;

  if (name == NULL || buffer == NULL || size == NULL || *size == 0)
    return UV_EINVAL;

  var = FUNC0(name);

  if (var == NULL)
    return UV_ENOENT;

  len = FUNC2(var);

  if (len >= *size) {
    *size = len + 1;
    return UV_ENOBUFS;
  }

  FUNC1(buffer, var, len + 1);
  *size = len;

  return 0;
}