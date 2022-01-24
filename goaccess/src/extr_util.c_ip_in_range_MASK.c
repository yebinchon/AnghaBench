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
struct TYPE_2__ {int ignore_ip_idx; char** ignore_ips; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*,char*) ; 
 char* FUNC4 (char*) ; 

int
FUNC5 (const char *ip)
{
  char *start = NULL, *end, *dash;
  int i;

  for (i = 0; i < conf.ignore_ip_idx; ++i) {
    end = NULL;
    if (conf.ignore_ips[i] == NULL || *conf.ignore_ips[i] == '\0')
      continue;

    start = FUNC4 (conf.ignore_ips[i]);
    /* split range */
    if ((dash = FUNC1 (start, '-')) != NULL) {
      *dash = '\0';
      end = dash + 1;
    }

    /* matches single IP */
    if (end == NULL && start) {
      if (FUNC2 (ip, start) == 0) {
        FUNC0 (start);
        return 1;
      }
    }
    /* within range */
    else if (start && end) {
      if (FUNC3 (ip, start, end)) {
        FUNC0 (start);
        return 1;
      }
    }
    FUNC0 (start);
  }

  return 0;
}