
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int metafile_len; int * metafile; int sugg; } ;
typedef TYPE_2__ user ;
struct TYPE_9__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_7__ {int size; } ;


 int MAX_SUGGESTIONS ;
 int all_sugg_cnt ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int fprintf (int ,char*,int,TYPE_2__*) ;
 TYPE_4__ header ;
 int index_mode ;
 int qrealloc (int *,int,int) ;
 int stderr ;
 int trp_incr (int *,int,int) ;
 TYPE_2__* users ;
 int verbosity ;

void bind_user_metafile (user *u) {
  if (verbosity > 2) {
    fprintf (stderr, "bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  }
  int local_id = (int)(u - users);

  if (u->metafile == ((void*)0)) {
    return;
  }

  assert (1 <= local_id && local_id <= header.user_cnt);

  assert (u->metafile_len >= (int)sizeof (int));
  int exc_size = (((int *)u->metafile)[0] + 1) * sizeof (int),
      sug_size = u->metafile_len - exc_size;
  assert (sug_size >= 0);

  if (sug_size && !index_mode) {
    assert (sug_size % (2 * sizeof (int)) == sizeof (int));

    int *sugg = (int *)(u->metafile + exc_size), n = sugg[0];


    n = (sug_size / sizeof (int) - 1) / 2;
    all_sugg_cnt += n;

    if (n > MAX_SUGGESTIONS) {
      n = MAX_SUGGESTIONS;
    }

    int i;
    for (i = 0; i < n; i++) {
      assert (1 <= sugg[2 * i + 2] && sugg[2 * i + 2] < 500000000);
      assert (1 <= sugg[2 * i + 1] && sugg[2 * i + 1] < 100000);

      trp_incr (&u->sugg, sugg[2 * i + 2], sugg[2 * i + 1]);
    }
    qrealloc (u->metafile, exc_size, u->metafile_len);
    u->metafile_len = exc_size;
    header.user_index[local_id].size = exc_size;
    allocated_metafile_bytes -= sug_size;
  }
}
