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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void* FUNC4(const char* module_name, const char* attr_name,
                       const char* capsule_name)
{
  void* ptr;
  PyObject* module = NULL;
  PyObject* capsule = NULL;

  module = FUNC1(module_name);
  if(!module)
    goto error;

  capsule = FUNC2(module, attr_name);
  if(!capsule)
    goto error;

  ptr = FUNC0(capsule, capsule_name);
  if(!ptr)
    goto error;

  goto finally;

  error:
  ptr = NULL;

  finally:
  FUNC3(capsule);
  FUNC3(module);
  return ptr;
}