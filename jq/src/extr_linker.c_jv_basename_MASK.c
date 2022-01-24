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
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static jv FUNC4(jv name) {
  const char *s = FUNC2(name);
  const char *p = FUNC3(s, '/');
  if (!p)
    return name;
  jv res = FUNC1("%s", p);
  FUNC0(name);
  return res;
}