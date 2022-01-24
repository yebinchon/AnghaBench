#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int wcnt; char** words; TYPE_1__* dbg; } ;
typedef  TYPE_2__ mrdb_state ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  debug_command ;
struct TYPE_6__ {char* prvfile; int prvline; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static debug_command*
FUNC5(mrb_state *mrb, mrdb_state *mrdb)
{
  debug_command *cmd = NULL;
  char *p;
  int i;

  while (!cmd) {
    for (p=NULL; !p || *p=='\0'; ) {
      FUNC3("(%s:%d) ", mrdb->dbg->prvfile, mrdb->dbg->prvline);
      FUNC0(stdout);
      p = FUNC1(mrb, mrdb);
    }

    cmd = FUNC2(mrb, mrdb, p);
#ifdef _DBG_MRDB_PARSER_
    for (i=0; i<mrdb->wcnt; i++) {
      printf("%d: %s\n", i, mrdb->words[i]);
    }
#endif
    if (!cmd) {
      FUNC3("invalid command (");
      for (i=0; i<mrdb->wcnt; i++) {
        if (i>0) {
          FUNC3(" ");
        }
        FUNC3("%s", mrdb->words[i]);
      }
      FUNC4(")");
    }
  }
  return cmd;
}