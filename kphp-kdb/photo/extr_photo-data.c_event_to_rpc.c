
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int field_i; TYPE_2__* fields; } ;
typedef TYPE_1__ type_desc ;
struct TYPE_12__ {int type; } ;
typedef TYPE_2__ field_desc ;
typedef int event ;
struct TYPE_13__ {scalar_t__ deleted; int * dyn; int * obj; } ;
typedef TYPE_3__ actual_object ;


 int * GET_DOUBLE (int *,TYPE_2__*) ;
 int* GET_INT (int *,TYPE_2__*) ;
 int * GET_LONG (int *,TYPE_2__*) ;
 int GET_RAW (int *,TYPE_2__*) ;
 char* GET_STRING (int *,TYPE_2__*) ;



 char* RAW_DATA (int ) ;
 int READ_CHAR (char*,char) ;
 int READ_INT (char*,int) ;
 int READ_LONG (char*,unsigned long long) ;
 int TL_PHOTO_AUDIO_LOCATION ;
 int TL_PHOTO_AUDIO_LOCATION_STORAGE ;
 int TL_PHOTO_PHOTO_LOCATION ;
 int TL_PHOTO_PHOTO_LOCATION_STORAGE ;
 int TL_PHOTO_VIDEO_LOCATION ;
 int TL_PHOTO_VIDEO_LOCATION_STORAGE ;
 int assert (int) ;
 int base64url_encode (unsigned char*,int,char*,int) ;
 int get_server (int) ;
 scalar_t__ has_field (int *,int) ;
 int mode ;
 int strlen (char*) ;





 int tl_store_double (int ) ;
 int tl_store_int (int) ;
 int tl_store_long (int ) ;
 int tl_store_raw_data (char*,int) ;
 int tl_store_string (char*,int) ;
 TYPE_1__* types ;

void event_to_rpc (actual_object *o, int type_id, long long mask) {
  event *e = o->obj, *e2 = o->dyn;
  type_desc *t = &types[type_id];

  int type_name = 0;
  int i;
  for (i = 0; i < t->field_i; i++) {
    if ((mask >> i) & 1) {
      if (e2 == ((void*)0) || !has_field (e2, i)) {
        if (e == ((void*)0) || !has_field (e, i)) {
          mask -= (1ll << i);
        }
      }
    }
  }

  int add_mask = (o->deleted ? (1 << 29) : 0);
  if (mask >= (1 << 29)) {
    tl_store_int ((mask & ((1 << 29) - 1)) + add_mask + (1 << 30));
    tl_store_int (mask >> 29);
  } else {
    tl_store_int (mask + add_mask);
  }

  for (i = 0; i < t->field_i; i++) {
    if ((mask >> i) & 1) {
      event *ev = ((void*)0);
      if (e2 != ((void*)0) && has_field (e2, i)) {
        ev = e2;
      } else if (e != ((void*)0) && has_field (e, i)) {
        ev = e;
      }
      assert (ev);

      field_desc *f = &t->fields[i];
      switch (f->type) {
        case 131: {
          int value = *GET_INT(ev, f);

          tl_store_int (value);
          break;
        }
        case 130:
          tl_store_long (*GET_LONG(ev, f));
          break;
        case 132:
          tl_store_double (*GET_DOUBLE(ev, f));
          break;
        case 128: {
          char *res = GET_STRING(ev, f);
          tl_store_string (res, strlen (res));
          break;
        }
        case 129: {
          char *loc = RAW_DATA (GET_RAW (ev, f));
          assert (loc != ((void*)0));

          char *loc_begin = loc;
          int count = 0;
          if (loc[0] < 0) {
            loc += -(loc[0] + mode) + 4 * sizeof (int) + 1;
            count = 1;
          }
          count += *loc;
          loc = loc_begin;
          tl_store_int (count);


          if (loc[0] < 0) {
            switch (mode) {
              case 134:
                type_name = TL_PHOTO_PHOTO_LOCATION;
                break;
              case 133:
                type_name = TL_PHOTO_VIDEO_LOCATION;
                break;
              case 135:
                type_name = TL_PHOTO_AUDIO_LOCATION;
                break;
              default:
                assert (0);
            }
            tl_store_int (type_name);

            int length = -(loc[0] + mode);
            loc++;

            tl_store_raw_data (loc, 4 * sizeof (int));
            loc += 4 * sizeof (int);

            tl_store_string (loc, length);
            loc += length;
          }

          switch (mode) {
            case 134:
              type_name = TL_PHOTO_PHOTO_LOCATION_STORAGE;
              break;
            case 133:
              type_name = TL_PHOTO_VIDEO_LOCATION_STORAGE;
              break;
            case 135:
              type_name = TL_PHOTO_AUDIO_LOCATION_STORAGE;
              break;
            default:
              assert (0);
          }

          int vid = 0, local_id = 0, sid = 0, j, extra;
          char size = 0, diff;
          unsigned long long secret;

          for (j = *loc++; j > 0; j--) {
            READ_CHAR(loc, size);
            assert (size);

            if (size < 0) {
              size *= -1;
              READ_CHAR(loc, diff);
              local_id += diff;
            } else {
              READ_INT(loc, vid);
              READ_INT(loc, local_id);
              sid = get_server (vid);
            }
            READ_INT(loc, extra);
            READ_LONG(loc, secret);

            char base64url_secret[12];
            assert (!base64url_encode ((unsigned char *)&secret, 8, base64url_secret, 12));

            int rotate = (size >> 5);
            char size_str[2];
            size_str[0] = (size & 31) + 'a' - 1;
            size_str[1] = 0;

            tl_store_int (type_name);
            tl_store_int (rotate);
            tl_store_string (size_str, 1);
            tl_store_int (sid);
            tl_store_int (vid);
            tl_store_int (local_id);
            tl_store_int (extra);
            tl_store_string (base64url_secret, strlen (base64url_secret));
          }
          break;
        }
        default:
          assert (0);
      }
    }
  }
}
