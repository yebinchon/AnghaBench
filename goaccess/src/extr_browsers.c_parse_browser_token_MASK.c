#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  browsers_hash_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ conf ; 
 scalar_t__ FUNC2 (char***,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char***,int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*) ; 
 size_t FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (char ***list, char *line, int n)
{
  char *val;
  size_t idx = 0;

  /* key */
  idx = FUNC4 (line, "\t");
  if (FUNC5 (line) == idx)
    FUNC0 ("Malformed browser name at line: %d", n);

  line[idx] = '\0';

  /* value */
  val = line + (idx + 1);
  idx = FUNC6 (val, "\t");
  if (FUNC5 (val) == idx)
    FUNC0 ("Malformed browser category at line: %d", n);
  val = val + idx;
  val = FUNC7 (val);

  if (FUNC2 (list, conf.browsers_hash_idx, line)) {
    FUNC1 (("Duplicate browser entry: %s", line));
    return;
  }

  FUNC3 (list, conf.browsers_hash_idx, line, val);
  conf.browsers_hash_idx++;
}