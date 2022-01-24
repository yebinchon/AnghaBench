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
struct TYPE_4__ {scalar_t__ idx; } ;
typedef  TYPE_1__ GHolder ;

/* Variables and functions */
 char* T_DASH_HEAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char**,char**,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,char*,char*) ; 
 char* FUNC4 (scalar_t__) ; 
 char* FUNC5 (char const*) ; 

char *
FUNC6 (GHolder * h)
{
  const char *head = T_DASH_HEAD;
  char *hd = NULL, *start = NULL, *end = NULL;

  if (h->idx == 0 || FUNC1 (h, &start, &end, "%d/%b/%Y"))
    return FUNC5 (head);

  hd = FUNC4 (FUNC2 (NULL, 0, "%s (%s - %s)", head, start, end) + 1);
  FUNC3 (hd, "%s (%s - %s)", head, start, end);

  FUNC0 (end);
  FUNC0 (start);

  return hd;
}