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
 int /*<<< orphan*/ * FUNC0 (void*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

PyObject* FUNC4(PyObject* m, void* ptr, const char* attr_name,
                         const char* capsule_name)
{
  PyObject* capsule = NULL;

  capsule = FUNC0(ptr, capsule_name, NULL);
  if(!capsule)
    goto error;

  if(FUNC1(m, attr_name, capsule) == -1)
    goto error;

  FUNC2(capsule);
  goto finally;

  error:
  FUNC3(capsule);
  capsule = NULL;

  finally:
  return capsule;
}