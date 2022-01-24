#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int module; } ;
typedef  TYPE_1__ GColors ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5 (GColors * color, const char *value)
{
  char *line = FUNC4 (value), *p;

  p = FUNC3 (line, ' ');
  if (!p || !*(p + 1)) {
    FUNC0 (("attempted to parse color module: %s\n", value));
    goto clean;
  }

  if ((color->module = FUNC2 (p + 1)) == -1)
    FUNC0 (("attempted to parse color module: %s\n", value));

clean:
  FUNC1 (line);

  return 0;
}