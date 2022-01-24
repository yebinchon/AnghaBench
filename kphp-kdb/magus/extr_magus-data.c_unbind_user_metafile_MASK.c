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
struct TYPE_3__ {int metafile_len; int /*<<< orphan*/ * metafile; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/ * EMPTY__METAFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC3 (user *u) {
  FUNC0 (u != NULL);

  if (verbosity > 2) {
    FUNC2 (stderr, "unbind_user_metafile\n");
  }

  if (u->metafile != NULL && u->metafile != EMPTY__METAFILE) {
    FUNC1 (u->metafile, u->metafile_len);
  }

  u->metafile = NULL;
  u->metafile_len = -1;
}