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
typedef  int /*<<< orphan*/  user ;
struct TYPE_6__ {int objs_limit; scalar_t__ file_type; int total_scores; int has_names; int fid_names_cnt; int /*<<< orphan*/  fid_id; int /*<<< orphan*/  fid_id_str; TYPE_2__* fid_names_begins; TYPE_2__* fid_names; TYPE_2__* C; TYPE_2__* C_index; TYPE_2__* CC; TYPE_2__* f_mul; int /*<<< orphan*/  fids; } ;
typedef  TYPE_1__ similarity_index_header ;
typedef  int /*<<< orphan*/  score ;
struct TYPE_7__ {int /*<<< orphan*/  new_exceptions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 scalar_t__* dumps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  h_users ; 
 int /*<<< orphan*/  header ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int index_mode ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sim_header ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__* types ; 
 int FUNC10 () ; 
 int user_cnt ; 
 TYPE_2__* users ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ verbosity ; 

void FUNC12 (void) {
  if (verbosity > 0) {
    while (FUNC10() != -1) {
    }

    int i, j;
    for (i = 0; i < user_cnt; i++) {
      FUNC6 (&users[i].new_exceptions);
    }

    for (i = 1; i < 256; i++) {
      if (types[i]) {
        similarity_index_header *header = &sim_header[i];
        int fn = header->objs_limit;

        FUNC11 (&header->fids);

        FUNC1 (header->f_mul, sizeof (float) * fn);

        if (header->file_type == 0) {
          FUNC1 (header->CC, sizeof (float) * header->total_scores);
        } else {
          FUNC1 (header->C_index, sizeof (int) * (fn + 1));
          FUNC1 (header->C, sizeof (score) * header->total_scores);
        }

        if (header->has_names) {
          FUNC1 (header->fid_names, header->has_names);

          for (j = fn; j < header->fid_names_cnt; j++) {
            FUNC3 (header->fid_names_begins[j]);
          }
          FUNC1 (header->fid_names_begins, sizeof (char *) * (fn * (index_mode + 1) + 1024000 * index_mode + 1));
          FUNC9 (&header->fid_id_str);
        } else {
          FUNC8 (&header->fid_id);
        }
      }
      if (dumps[i]) {
//        vector_free (obj_scores[i]);
      }
    }

    FUNC1 (users, sizeof (user) * user_cnt);

    FUNC7 (&h_users);
    FUNC5 (&header);

    FUNC4 (stderr, "Memory left: %ld\n", FUNC2());
    FUNC0 (FUNC2() == 0);
  }
}