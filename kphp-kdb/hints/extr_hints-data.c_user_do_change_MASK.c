#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_13__ {int currId; } ;
struct TYPE_14__ {int object_old_n; char* object_data; int* object_indexes; char** object_names; int /*<<< orphan*/  pref_table; int /*<<< orphan*/  object_chg; TYPE_12__ object_table; int /*<<< orphan*/  changed_objs; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ user ;
typedef  float rating ;
typedef  TYPE_2__* change_list_ptr ;
struct TYPE_15__ {int type; int x; char* s; int val; int cnt; scalar_t__ timestamp; int /*<<< orphan*/  number; int /*<<< orphan*/ * next; } ;
typedef  TYPE_2__ change_list ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_CNT ; 
 float MAX_RATING ; 
 int MAX_RATING_NUM ; 
 int MEM_FLAG ; 
 float RATING_NORM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ add_on_increment ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (float) ; 
 scalar_t__ fading ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 int /*<<< orphan*/  friend_changes ; 
 long long* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long long,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,long long,int) ; 
 int FUNC13 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int* max_cnt_type ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ ratingT ; 
 int /*<<< orphan*/  FUNC15 (float*,int,scalar_t__) ; 
 int rating_num ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC16 (char*) ; 
 int FUNC17 (TYPE_1__*,int,int) ; 
 char* FUNC18 (TYPE_1__*,int) ; 
 float* FUNC19 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC20 (TYPE_1__*,int) ; 
 int FUNC21 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 int verbosity ; 

void FUNC24 (user *u, change_list_ptr change) {
/*  {
    int id = ltbl_get_rev (&user_table, (int)(u - users)), x = change->x, type = change->type, tm = change->timestamp, num = change->number;
    char *s = change->s;
    fprintf (stderr, "do change user = %d %d:%d, timestamp = %d, number = %d <", id, type, x, tm, num);
    fprintf (stderr, "%ld><", (long)s);

    if (s == NULL || change->x <= 0 || type >= 256) {
      fprintf (stderr, "NULL>\n");
    } else {
      fprintf (stderr, "%s>\n", s);
    }
  }*/

  int type = change->type;
  int local_id;

  if (change->x == 0) {
    if (type == 0) {
      //Rating nullify
      int object_n, num;
      for (object_n = u->object_old_n + u->object_table.currId - 1; object_n > 0; object_n--) {
        for (num = 0; num < rating_num; num++) {
          *FUNC19 (u, object_n, num) = 0.0f;
        }
      }
    } else if (type == 1 || type == 2) {
      //Set rating state
      u->flags = FUNC1(u->flags, type - 1);
    } else {
      FUNC3 (0);
    }
    return;
  }

  if (change->x < 0) {
    if (FUNC0(u->flags) == 0) {
      return;
    }

    int num = type / 256;
    int x = -change->x;
    type %= 256;
    local_id = FUNC21 (u, type, x);

#ifdef NOHINTS
    if (!local_id && add_on_increment) {
      change_list tmp;
      tmp.next = NULL;
      tmp.s = NULL;
      tmp.x = x;
      tmp.type = type;
      tmp.timestamp = change->timestamp;
      tmp.number = change->number;

      user_do_change (u, &tmp);
      local_id = user_has_object (u, type, x);
    }
#endif

    if (verbosity > 1) {
      FUNC9 (stderr, "Incrementing object of type %d, object_id = %d, local_id = %d\n", type, x, local_id);
    }

    if (local_id != 0) {
      if (num >= MAX_RATING_NUM) { //set obj rating
        if (fading) {
          *FUNC19 (u, local_id, num - MAX_RATING_NUM) = (rating)(change->val * FUNC8 (((rating)(change->timestamp - ratingT)) / RATING_NORM));
        } else {
          rating *a = FUNC19 (u, local_id, num - MAX_RATING_NUM);
          *a = change->val;
          if (*a < -MAX_RATING) {
            *a = -MAX_RATING;
          }
          if (*a > MAX_RATING) {
            *a = MAX_RATING;
          }
        }
      } else {
        FUNC15 (FUNC19 (u, local_id, num), change->cnt, change->timestamp);
      }
    }
    return;
  }

  if (type >= 256) { // global change type
    type -= 256;
    int new_type = change->cnt;

    FUNC3 (0 < type && type < 256);
    FUNC3 (0 < new_type && new_type < 256);

    local_id = FUNC17 (u, type, change->x);

    if (verbosity > 1) {
      FUNC9 (stderr, "Changing type of object with type %d, object_id = %d, local_id = %d to type %d\n", type, change->x, local_id, new_type);
    }

    if (FUNC20 (u, local_id)) {
      change_list tmp;
      tmp.next = NULL;
#ifdef HINTS
      tmp.s = user_get_object_name (u, local_id);
#else
      tmp.s = NULL;
#endif
      tmp.x = change->x;
      tmp.type = new_type;
      tmp.timestamp = change->timestamp;
      tmp.number = change->number;

      FUNC24 (u, &tmp);


      int new_local_id = FUNC17 (u, new_type, change->x);
      if (new_local_id == 0) {
        return;
      }

      int num;
      for (num = 0; num < rating_num; num++) {
        *FUNC19 (u, new_local_id, num) = *FUNC19 (u, local_id, num);
      }

#ifdef HINTS
      tmp.s = NULL;
#endif
      tmp.type = -type;

      FUNC24 (u, &tmp);
    }

    return;
  }

  int is_del;
  if (type < 0) {
    is_del = 1;
    type = -type;
  } else {
    is_del = 0;
  }

#ifdef HINTS
  char *s, **s_ptr = NULL;
  int s_in_mtf = 0;
#endif

  if (is_del == 1) {
    FUNC3 (change->s == NULL);
    local_id = FUNC21 (u, type, change->x);

    if (verbosity > 1) {
      FUNC9 (stderr, "Deleting object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
    }

    if (local_id == 0) {
      return; // object doesn't exist (do not need to delete)
    }

#ifdef HINTS
    if (local_id <= u->object_old_n) {
      s_ptr = ((char **)(u->object_data + (u->object_indexes[local_id] & ~MEM_FLAG)));
      if (u->object_indexes[local_id] & MEM_FLAG) {
        s = *s_ptr;
      } else {
        s_in_mtf = 1;
        s = (u->object_data + u->object_indexes[local_id]);
        u->object_indexes[local_id] |= MEM_FLAG;
        vct_add (&u->changed_objs, local_id);
      }
    } else {
      s_ptr = &u->object_names[local_id - u->object_old_n];
      s = *s_ptr;
    }
#else
    FUNC5 (&u->object_chg, local_id * 2 + 1);
#endif
  } else {
#ifdef HINTS
    assert (change->s != NULL);
#else
    FUNC3 (change->s == NULL);
#endif

    local_id = FUNC17 (u, type, change->x);
    if (verbosity > 1) {
      FUNC9 (stderr, "Adding object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
    }

    if (FUNC20 (u, local_id)) {
#ifdef HINTS
      change_list tmp;
      tmp.next = NULL;
      tmp.s = NULL;
      tmp.x = change->x;
      tmp.type = -type;
      tmp.timestamp = change->timestamp;
      tmp.number = change->number;

      user_do_change (u, &tmp);
#else
      return;
#endif
    } else {
      if (local_id == 0) {
        if (u->object_old_n + u->object_table.currId + 1 < MAX_CNT - (max_cnt_type[type] < MAX_CNT) * MAX_CNT / 10) {
          local_id = FUNC13 (&u->object_table, FUNC2(type, change->x)) + u->object_old_n;

          FUNC22 (u);

          if (fading) {
            int num;

            for (num = 0; num < rating_num; num++) {
              FUNC15 (FUNC19 (u, local_id, num), 1, change->timestamp);
            }
          }

          if (type == 10) {
            friend_changes++;
          }
        } else {
          return;
        }

        if (verbosity > 1) {
          FUNC9 (stderr, "Adding object of type %d, object_id = %d, local_id = %d\n", type, change->x, local_id);
        }
      }
    }
#ifdef NOHINTS
    chg_add (&u->object_chg, local_id * 2 + 1);
#endif

    FUNC22 (u);

#ifdef HINTS
    assert (user_get_object_name (u, local_id) == NULL);

    int len = (strlen (change->s) + 1) * sizeof (char);
    s = dl_malloc (len);
    memcpy (s, change->s, len);

    if (local_id <= u->object_old_n) {
      *((char **)(u->object_data + (u->object_indexes[local_id] & ~MEM_FLAG))) = s;

      assert (u->object_indexes[local_id] & MEM_FLAG);
    } else {
      u->object_names[local_id - u->object_old_n] = s;
    }
#endif
  }

#ifdef HINTS
  assert (s != NULL);

//  fprintf (stderr, "   %s for object id = %d <%s>\n", is_del ? "del" : "add", local_id, s);

  long long *v = gen_hashes (s);
  int i;
  for (i = 0; v[i]; i++) {
    if (is_del) {
      htbl_del (&u->pref_table, v[i], local_id);
    } else {
      htbl_add (&u->pref_table, v[i], local_id);
    }
  }

  if (is_del) {
    if (!s_in_mtf) {
      dl_free (s, (strlen (s) + 1) * sizeof (char));
    }
    *s_ptr = NULL;
  }
#endif
}