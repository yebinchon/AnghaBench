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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static char*
FUNC4(mrb_state *mrb, const char *path)
{
  size_t len;
  const char *p;
  char *dir;

  if (path == NULL) {
    return NULL;
  }

  p = FUNC3(path, '/');
  len = p != NULL ? (size_t)(p - path) : FUNC1(path);

  dir = (char*)FUNC0(mrb, len + 1);
  FUNC2(dir, path, len);
  dir[len] = '\0';

  return dir;
}