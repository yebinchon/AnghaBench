#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ rm_so; size_t rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  TYPE_2__* pc_t ;
struct TYPE_10__ {int re_nsub; } ;
struct TYPE_9__ {TYPE_3__* re; TYPE_1__* groups; } ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 void* FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,char*,int) ; 
 int FUNC6 (TYPE_3__*,char*,size_t,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char const*,size_t) ; 
 char* FUNC9 (char const*,size_t) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC11(pc_t self, const char *line, size_t len,
    char **to_device_id, int *to_min_port, int *to_max_port) {
  if (!self->re) {
    self->re = FUNC2(sizeof(regex_t));
    if (FUNC5(self->re,
          "^[ \t]*"
          "(([a-fA-F0-9-]{25,}|\\*|null)[ \t]*:?|:)"
          "[ \t]*(-?[0-9]+)"
          "([ \t]*-[ \t]*([0-9]+))?"
          "[ \t]*$", REG_EXTENDED | REG_ICASE)) {
      FUNC4("Internal error: bad regex?");
      return -1;
    }
    size_t ngroups = self->re->re_nsub + 1;
    self->groups = FUNC0(ngroups, sizeof(regmatch_t));
  }
  size_t ngroups = self->re->re_nsub + 1;
  regmatch_t *groups = self->groups;
  char *line2 = FUNC0(len+1, sizeof(char));
  FUNC3(line2, line, len);
  int is_not_match = FUNC6(self->re, line2, ngroups, groups, 0);
  FUNC1(line2);
  if (is_not_match) {
    return -1;
  }
  char *device_id;
  if (groups[2].rm_so >= 0) {
    size_t len = groups[2].rm_eo - groups[2].rm_so;
    if (FUNC8("null", line + groups[2].rm_so, len)) {
      device_id = FUNC9(line + groups[2].rm_so, len);
    } else {
      device_id = NULL;
    }
  } else {
    device_id = FUNC7("*");
  }
  int min_port = FUNC10(line + groups[3].rm_so, NULL, 0);
  int max_port = min_port;
  if (groups[4].rm_so >= 0 && groups[5].rm_so >= 0) {
    max_port = FUNC10(line + groups[5].rm_so, NULL, 0);
  }
  *to_device_id = device_id;
  *to_min_port = min_port;
  *to_max_port = max_port;
  return 0;
}