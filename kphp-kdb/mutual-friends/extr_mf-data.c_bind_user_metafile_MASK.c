#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int metafile_len; int /*<<< orphan*/ * metafile; int /*<<< orphan*/  sugg; } ;
typedef  TYPE_2__ user ;
struct TYPE_9__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_7__ {int size; } ;

/* Variables and functions */
 int MAX_SUGGESTIONS ; 
 int all_sugg_cnt ; 
 int allocated_metafile_bytes ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,TYPE_2__*) ; 
 TYPE_4__ header ; 
 int /*<<< orphan*/  index_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* users ; 
 int verbosity ; 

void FUNC4 (user *u) {
  if (verbosity > 2) {
    FUNC1 (stderr, "bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  }
  int local_id = (int)(u - users); // magic. sorry.

  if (u->metafile == NULL) {
    return;
  }

  FUNC0 (1 <= local_id && local_id <= header.user_cnt);

  FUNC0 (u->metafile_len >= (int)sizeof (int));
  int exc_size = (((int *)u->metafile)[0] + 1) * sizeof (int),
      sug_size = u->metafile_len - exc_size;
  FUNC0 (sug_size >= 0);

  if (sug_size && !index_mode) {
    FUNC0 (sug_size % (2 * sizeof (int)) == sizeof (int));

    int *sugg = (int *)(u->metafile + exc_size), n = sugg[0];
    //fprintf (stderr, "n = %d, sug_size = %d\n", n, sug_size);
    //assert (sug_size == sizeof (int) * (n * 2 + 1));
    n = (sug_size / sizeof (int) - 1) / 2;
    all_sugg_cnt += n;

    if (n > MAX_SUGGESTIONS) {
      n = MAX_SUGGESTIONS;
    }

    int i;
    for (i = 0; i < n; i++) {
      FUNC0 (1 <= sugg[2 * i + 2] && sugg[2 * i + 2] < 500000000);
      FUNC0 (1 <= sugg[2 * i + 1] && sugg[2 * i + 1] < 100000);

      FUNC3 (&u->sugg, sugg[2 * i + 2], sugg[2 * i + 1]);
    }
    FUNC2 (u->metafile, exc_size, u->metafile_len);
    u->metafile_len = exc_size;
    header.user_index[local_id].size = exc_size;
    allocated_metafile_bytes -= sug_size;
  }
}