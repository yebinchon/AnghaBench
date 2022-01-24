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
struct TYPE_2__ {char* origin; int origin_len; } ;

/* Variables and functions */
 TYPE_1__* Z ; 
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t cur_zone_id ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4 (char *name, int name_len) {
  char *origin = Z[cur_zone_id].origin;
  FUNC1 (origin);
  int l = Z[cur_zone_id].origin_len;
  char *s = FUNC0 (name_len + l + 1);
  FUNC3 (s, name, name_len);
  s[name_len] = '.';
  FUNC3 (s + name_len + 1, origin, l);
  l += name_len + 1;
  if (name[0] == '@' && name_len == 1) {
    s += 2;
    l -= 2;
  }
  return FUNC2 (s, l, 1);
}