#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int item; } ;
typedef  TYPE_1__ GColors ;
typedef  int /*<<< orphan*/  GColorPair ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (TYPE_1__*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 size_t FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 
 size_t FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8 (GColorPair * pair, GColors * color, char *line)
{
  char *val;
  int item = 0;
  size_t idx;

  /* key */
  idx = FUNC5 (line, " \t");
  if (FUNC6 (line) == idx)
    FUNC0 ("Malformed color key at line: %s", line);

  line[idx] = '\0';
  if ((item = FUNC1 (line)) == -1)
    FUNC0 ("Unable to find color key: %s", line);

  /* value */
  val = line + (idx + 1);
  idx = FUNC7 (val, " \t");
  if (FUNC6 (val) == idx)
    FUNC0 ("Malformed color value at line: %s", line);
  val = val + idx;

  /* get background/foreground color */
  if (FUNC3 (pair, val) == 1)
    FUNC0 ("Invalid bg/fg color pairs at: %s %s", line, val);

  if (FUNC2 (color, val) == 1)
    FUNC0 ("Invalid color attrs at: %s %s", line, val);

  if (FUNC4 (color, val) == 1)
    FUNC0 ("Invalid color module at: %s %s", line, val);

  color->item = item;
}