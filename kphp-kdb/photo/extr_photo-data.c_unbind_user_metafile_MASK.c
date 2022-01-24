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
struct TYPE_3__ {int metafile_len; int /*<<< orphan*/ * metafile; int /*<<< orphan*/  album_by_photo; int /*<<< orphan*/  d; int /*<<< orphan*/  photos; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/ * EMPTY__METAFILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  check_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * todel ; 
 int todel_n ; 
 int verbosity ; 

void FUNC7 (user *u) {
  FUNC0 (u != NULL);

  if (verbosity > 2) {
    FUNC3 (stderr, "unbind_user_metafile\n");
  }
  todel_n = 0;
  FUNC6 (&u->photos, check_data);
  int i;
  for (i = 0; i < todel_n; i++) {
    FUNC5 (&u->photos, todel[i]);
  }

 // map_int_vptr_pack (&u->photos);

  FUNC1 (&u->d);
  FUNC4 (&u->album_by_photo);

  if (u->metafile != NULL && u->metafile != EMPTY__METAFILE) {
    FUNC2 (u->metafile, u->metafile_len);
  }

  u->metafile = NULL;
  u->metafile_len = -1;
}