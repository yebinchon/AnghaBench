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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (void*,char*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void* level_cache_context,
                                 const char* const cache_paths[],
                                 int num_cache_paths,
                                 const char* key,
                                 const char* pk3_path) {
  // If an error is already pending in the runtime, we take no further action.
  if (FUNC0()) return;

  // We ignore cache paths. They can be set in level cache Python object.
  PyObject* output = FUNC1(
      level_cache_context, "write", "ss", key, pk3_path);

  FUNC2(output);
}