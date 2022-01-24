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
struct TYPE_4__ {int albums_n; scalar_t__* albums_offset; scalar_t__ metafile; int /*<<< orphan*/  albums_id; int /*<<< orphan*/  deleted_albums; int /*<<< orphan*/  photos; } ;
typedef  TYPE_1__ user ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 scalar_t__ EMPTY__METAFILE ; 
 scalar_t__ EMPTY__METAFILE_LEN ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  photo_func ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 

data *FUNC10 (user *u, int aid) {
//  dbg ("user_get_photo_data %d: album_id = %d\n", u->id, aid);

  data *albums = FUNC9 (u);

  int lid = FUNC0 (albums, aid);
  if (lid == -1) {
    FUNC4 ("unexisted album %d\n", aid);
    return NULL;
  }

  data **d = (data **)FUNC7 (&u->photos, aid);
  if (*d == NULL) {
    *d = FUNC6 (sizeof (data));
    FUNC1 (*d, &photo_func);
  }

//  dbg ("load data if needed\n");

  if (!FUNC3 (*d)) {
    int i = u->albums_n;
    if (FUNC8 (&u->deleted_albums, aid) == NULL) {
      i = FUNC5 (u->albums_id, u->albums_n, aid);
    }
    if (i != u->albums_n) {
      FUNC2 (*d, u->metafile + u->albums_offset[i], u->albums_offset[i + 1] - u->albums_offset[i]);
    } else {
      FUNC2 (*d, EMPTY__METAFILE, EMPTY__METAFILE_LEN);
    }
  }

  return *d;
}