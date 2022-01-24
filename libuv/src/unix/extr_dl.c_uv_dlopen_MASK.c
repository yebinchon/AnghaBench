#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ handle; int /*<<< orphan*/ * errmsg; } ;
typedef  TYPE_1__ uv_lib_t ;

/* Variables and functions */
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(const char* filename, uv_lib_t* lib) {
  FUNC0(); /* Reset error status. */
  lib->errmsg = NULL;
  lib->handle = FUNC1(filename, RTLD_LAZY);
  return lib->handle ? 0 : FUNC2(lib);
}