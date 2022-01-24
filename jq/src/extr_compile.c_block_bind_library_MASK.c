#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* symbol; int /*<<< orphan*/  op; struct TYPE_10__* prev; } ;
typedef  TYPE_1__ inst ;
struct TYPE_11__ {TYPE_1__* last; } ;
typedef  TYPE_2__ block ;
struct TYPE_12__ {int flags; } ;

/* Variables and functions */
 int OP_HAS_BINDING ; 
 int OP_HAS_CONSTANT ; 
 int OP_HAS_VARIABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int FUNC8 (char const*) ; 

block FUNC9(block binder, block body, int bindflags, const char *libname) {
  bindflags |= OP_HAS_BINDING;
  int nrefs = 0;
  int matchlen = (libname == NULL) ? 0 : FUNC8(libname);
  char *matchname = FUNC5(matchlen+2+1);
  matchname[0] = '\0';
  if (libname != NULL && libname[0] != '\0') {
    FUNC7(matchname,libname);
    FUNC7(matchname+matchlen, "::");
    matchlen += 2;
  }
  FUNC0(FUNC2(binder, bindflags));
  for (inst *curr = binder.last; curr; curr = curr->prev) {
    int bindflags2 = bindflags;
    char* cname = curr->symbol;
    char* tname = FUNC5(FUNC8(curr->symbol)+matchlen+1);
    FUNC7(tname, matchname);
    FUNC7(tname+matchlen, curr->symbol);

    // Ew
    if ((FUNC6(curr->op)->flags & (OP_HAS_VARIABLE | OP_HAS_CONSTANT)))
      bindflags2 = OP_HAS_VARIABLE | OP_HAS_BINDING;

    // This mutation is ugly, even if we undo it
    curr->symbol = tname;
    nrefs += FUNC1(FUNC4(curr), body, bindflags2, 0);
    curr->symbol = cname;
    FUNC3(tname);
  }
  FUNC3(matchname);
  return body; // We don't return a join because we don't want those sticking around...
}