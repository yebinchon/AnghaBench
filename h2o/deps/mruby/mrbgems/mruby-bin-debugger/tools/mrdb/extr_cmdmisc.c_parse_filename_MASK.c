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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_bool ;
struct TYPE_3__ {char* filename; } ;
typedef  TYPE_1__ listcmd_parser_state ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (char*,char) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static mrb_bool
FUNC5(mrb_state *mrb, char **sp, listcmd_parser_state *st)
{
  char *p;
  int len;

  if (st->filename != NULL) {
    FUNC0(mrb, st->filename);
    st->filename = NULL;
  }

  if ((p = FUNC2(*sp, ':')) != NULL) {
    len = p - *sp;
  }
  else {
    len = FUNC3(*sp);
  }

  if (len > 0) {
    st->filename = (char*)FUNC1(mrb, len + 1);
    FUNC4(st->filename, *sp, len);
    st->filename[len] = '\0';
    *sp += len;
    return TRUE;
  }
  else {
    return FALSE;
  }
}