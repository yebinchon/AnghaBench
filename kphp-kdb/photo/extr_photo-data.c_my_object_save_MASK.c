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
struct TYPE_10__ {char* name; int type; } ;
typedef  TYPE_1__ field_desc ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_11__ {int /*<<< orphan*/  dyn; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_2__ actual_object ;
struct TYPE_12__ {TYPE_1__* fields; } ;

/* Variables and functions */
 scalar_t__ EMPTY__METAFILE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int* FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int PHOTO_TYPE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 
#define  t_double 132 
#define  t_int 131 
#define  t_long 130 
#define  t_raw 129 
#define  t_string 128 
 int /*<<< orphan*/  total_photos ; 
 TYPE_3__* types ; 

inline int FUNC14 (actual_object *o, char *buf, int buf_size, int type_id) {
  if (type_id == PHOTO_TYPE) {
    total_photos++;
  }

  event *old = o->obj == (event *)EMPTY__METAFILE ? NULL : o->obj, *new = old;
  event *e = FUNC8 (new, o->dyn, type_id);

  if (0) {
    int k;
    for (k = 0; k < 63; k++) {
      if (!FUNC12 (e, k)) {
        continue;
      }

      field_desc *f = &types[type_id].fields[k];
      FUNC9 (stderr, "%15s: ", f->name);

      switch (f->type) {
        case t_int:
          FUNC9 (stderr, "%d", *FUNC1(e, f));
          break;
        case t_long:
          FUNC9 (stderr, "%d", *FUNC2(e, f));
          break;
        case t_double:
          FUNC9 (stderr, "%.6d", *FUNC0(e, f));
          break;
        case t_string: {
          char *p = FUNC4(e, f);
          while (*p) {
            switch (*p) {
              case '\t':
              case '\n':
              case '\\':
                FUNC10 ('\\', stderr);
              default:
                FUNC10 (*p++, stderr);
            }
          }
          break;
        }
        case t_raw:
          FUNC9 (stderr, "%d", FUNC5 (FUNC3 (e, f)));
          break;
        default:
          FUNC6 (0);
      }
      FUNC9 (stderr, "\n");
    }
    FUNC9 (stderr, "\n");
  }

  int len = FUNC11 (e);
  FUNC6 (len <= buf_size);
  FUNC13 (buf, e, len);

  if (e != new) {
    FUNC7 (e);
  }
  if (new != old) {
    FUNC7 (new);
  }
  return len;
}