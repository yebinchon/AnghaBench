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
typedef  int /*<<< orphan*/  jerry_feature_t ;

/* Variables and functions */
 int /*<<< orphan*/  JERRY_LOG_LEVEL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static bool
FUNC3 (jerry_feature_t feature, /**< feature to check */
               const char *option) /**< command line option that triggered this check */
{
  if (!FUNC0 (feature))
  {
    FUNC1 (JERRY_LOG_LEVEL_WARNING);
    FUNC2 (JERRY_LOG_LEVEL_WARNING, "Ignoring '%s' option because this feature is disabled!\n", option);
    return false;
  }
  return true;
}