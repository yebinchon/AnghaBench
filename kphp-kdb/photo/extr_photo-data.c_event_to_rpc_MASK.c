#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int field_i; TYPE_2__* fields; } ;
typedef  TYPE_1__ type_desc ;
struct TYPE_12__ {int type; } ;
typedef  TYPE_2__ field_desc ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_13__ {scalar_t__ deleted; int /*<<< orphan*/ * dyn; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_3__ actual_object ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int* FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 char* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
#define  MODE_AUDIO 135 
#define  MODE_PHOTO 134 
#define  MODE_VIDEO 133 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned long long) ; 
 int TL_PHOTO_AUDIO_LOCATION ; 
 int TL_PHOTO_AUDIO_LOCATION_STORAGE ; 
 int TL_PHOTO_PHOTO_LOCATION ; 
 int TL_PHOTO_PHOTO_LOCATION_STORAGE ; 
 int TL_PHOTO_VIDEO_LOCATION ; 
 int TL_PHOTO_VIDEO_LOCATION_STORAGE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int,char*,int) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mode ; 
 int FUNC13 (char*) ; 
#define  t_double 132 
#define  t_int 131 
#define  t_long 130 
#define  t_raw 129 
#define  t_string 128 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 TYPE_1__* types ; 

void FUNC19 (actual_object *o, int type_id, long long mask) {
  event *e = o->obj, *e2 = o->dyn;
  type_desc *t = &types[type_id];

  int type_name = 0;
  int i;
  for (i = 0; i < t->field_i; i++) {
    if ((mask >> i) & 1) {
      if (e2 == NULL || !FUNC12 (e2, i)) {
        if (e == NULL || !FUNC12 (e, i)) {
          mask -= (1ll << i);
        }
      }
    }
  }

  int add_mask = (o->deleted ? (1 << 29) : 0);
  if (mask >= (1 << 29)) {
    FUNC15 ((mask & ((1 << 29) - 1)) + add_mask + (1 << 30));
    FUNC15 (mask >> 29);
  } else {
    FUNC15 (mask + add_mask);
  }

  for (i = 0; i < t->field_i; i++) {
    if ((mask >> i) & 1) {
      event *ev = NULL;
      if (e2 != NULL && FUNC12 (e2, i)) {
        ev = e2;
      } else if (e != NULL && FUNC12 (e, i)) {
        ev = e;
      }
      FUNC9 (*ev);

      field_desc *f = &t->fields[i];
      switch (f->type) {
        case t_int: {
          int value = *FUNC1(ev, f);

          FUNC15 (value);
          break;
        }
        case t_long:
          FUNC16 (*FUNC2(ev, f));
          break;
        case t_double:
          FUNC14 (*FUNC0(ev, f));
          break;
        case t_string: {
          char *res = FUNC4(ev, f);
          FUNC18 (res, FUNC13 (res));
          break;
        }
        case t_raw: {
          char *loc = FUNC5 (FUNC3 (ev, f));
          FUNC9 (loc != NULL);

          char *loc_begin = loc;
          int count = 0;
          if (loc[0] < 0) {
            loc += -(loc[0] + mode) + 4 * sizeof (int) + 1;
            count = 1;
          }
          count += *loc;
          loc = loc_begin;
          FUNC15 (count);


          if (loc[0] < 0) {
            switch (mode) {
              case MODE_PHOTO:
                type_name = TL_PHOTO_PHOTO_LOCATION;
                break;
              case MODE_VIDEO:
                type_name = TL_PHOTO_VIDEO_LOCATION;
                break;
              case MODE_AUDIO:
                type_name = TL_PHOTO_AUDIO_LOCATION;
                break;
              default:
                FUNC9 (0);
            }
            FUNC15 (type_name);

            int length = -(loc[0] + mode);
            loc++;

            FUNC17 (loc, 4 * sizeof (int));
            loc += 4 * sizeof (int);

            FUNC18 (loc, length);
            loc += length;
          }

          switch (mode) {
            case MODE_PHOTO:
              type_name = TL_PHOTO_PHOTO_LOCATION_STORAGE;
              break;
            case MODE_VIDEO:
              type_name = TL_PHOTO_VIDEO_LOCATION_STORAGE;
              break;
            case MODE_AUDIO:
              type_name = TL_PHOTO_AUDIO_LOCATION_STORAGE;
              break;
            default:
              FUNC9 (0);
          }

          int vid = 0, local_id = 0, sid = 0, j, extra;
          char size = 0, diff;
          unsigned long long secret;

          for (j = *loc++; j > 0; j--) {
            FUNC6(loc, size);
            FUNC9 (size);

            if (size < 0) {
              size *= -1;
              FUNC6(loc, diff);
              local_id += diff;
            } else {
              FUNC7(loc, vid);
              FUNC7(loc, local_id);
              sid = FUNC11 (vid);
            }
            FUNC7(loc, extra);
            FUNC8(loc, secret);

            char base64url_secret[12];
            FUNC9 (!FUNC10 ((unsigned char *)&secret, 8, base64url_secret, 12));

            int rotate = (size >> 5);
            char size_str[2];
            size_str[0] = (size & 31) + 'a' - 1;
            size_str[1] = 0;

            FUNC15 (type_name);
            FUNC15 (rotate);
            FUNC18 (size_str, 1);
            FUNC15 (sid);
            FUNC15 (vid);
            FUNC15 (local_id);
            FUNC15 (extra);
            FUNC18 (base64url_secret, FUNC13 (base64url_secret));
          }
          break;
        }
        default:
          FUNC9 (0);
      }
    }
  }
}