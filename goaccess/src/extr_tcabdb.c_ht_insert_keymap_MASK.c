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
typedef  int /*<<< orphan*/  GModule ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_KEYMAP ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,char const*) ; 
 int FUNC2 (void*,char const*) ; 

int
FUNC3 (GModule module, const char *key)
{
  int value = -1;
  void *hash = FUNC0 (module, MTRC_KEYMAP);

  if (!hash)
    return -1;

  if ((value = FUNC1 (hash, key)) != -1)
    return value;

  return FUNC2 (hash, key);
}