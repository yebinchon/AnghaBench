#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* metafile; int albums_n; int metafile_len; int* albums_id; int* albums_offset; int /*<<< orphan*/  album_by_photo; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ user ;
struct TYPE_7__ {int user_cnt; } ;

/* Variables and functions */
 char* EMPTY__METAFILE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,TYPE_1__*) ; 
 TYPE_3__ header ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* users ; 
 int verbosity ; 

void FUNC7 (user *u) {
  if (verbosity > 2) {
    FUNC5 (stderr, "bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  }
  FUNC4 ("bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  int local_id = (int)(u - users);

  if (u->metafile == NULL || u->metafile == EMPTY__METAFILE) {
    FUNC1 (u->metafile != NULL);
    FUNC4 ("empty metafile found\n");

    FUNC3 (&u->d, EMPTY__METAFILE, sizeof (int));
    FUNC6 (&u->album_by_photo, NULL, 0);
    u->albums_n = 0;

    return;
  }

  FUNC1 (u->metafile_len >= (int)sizeof (int));
  unsigned int crc;

  //dbg ("local_id = %d\n", local_id);
  FUNC1 (1 <= local_id && local_id <= header.user_cnt);
  //  data d;
  //  lookup album_by_photo;
  //  int albums_n, *albums_id, *albums_offset;
  //  ...
  //  album datas
  char *s = u->metafile;
  int len = u->metafile_len;

  FUNC0 (s, crc);
//  dbg ("crc = %u, len = %d\n", crc, u->metafile_len);
  FUNC2 (s, u->metafile_len - sizeof (int), &crc, 1);

  //TODO add asserts
  FUNC0 (s, len);
//  dbg ("data_len = %d\n", len);
  FUNC3 (&u->d, s, len);
  s += len;

  FUNC0 (s, u->albums_n);
//  dbg ("albums_n = %d\n", u->albums_n);
  u->albums_id = (int *)s;
  s += sizeof (int) * u->albums_n;
  u->albums_offset = (int *)s;
  s += sizeof (int) * (u->albums_n + 1);

  s = u->metafile + u->albums_offset[u->albums_n];

  FUNC0 (s, len);
//  dbg ("lookup_len = %d\n", len);
  FUNC6 (&u->album_by_photo, s, len);
  s += len;

  FUNC1 (s <= u->metafile + u->metafile_len);
}