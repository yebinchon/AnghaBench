
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {long long field_i; TYPE_2__* fields; } ;
typedef TYPE_4__ type_desc ;
struct TYPE_13__ {int v_fid; int type; int v_int; long long v_long; double v_double; int v_string_len; char* v_string; } ;
struct TYPE_8__ {int size; int secret; int extra; int local_id; int volume_id; int server; int rotate; } ;
struct TYPE_10__ {int photo_len; char* photo; int orig_album_id; int orig_owner_id; int server_id2; int server_id; } ;
struct TYPE_12__ {int v_fid; int is_location_engine; TYPE_1__ location_engine; TYPE_3__ location_old; } ;
struct TYPE_9__ {int type; } ;


 size_t MAX_LOCATIONS ;
 int TL_ERROR_BAD_VALUE ;
 int TL_PHOTO_AUDIO_LOCATION ;
 int TL_PHOTO_AUDIO_LOCATION_STORAGE ;
 int TL_PHOTO_PHOTO_LOCATION ;
 int TL_PHOTO_PHOTO_LOCATION_STORAGE ;
 int TL_PHOTO_VIDEO_LOCATION ;
 int TL_PHOTO_VIDEO_LOCATION_STORAGE ;
 int base64url_to_secret (char*,int *) ;
 TYPE_7__* field_changes ;
 size_t field_changes_n ;
 TYPE_6__* location_changes ;
 size_t location_changes_n ;
 int memcpy (char*,char*,int) ;





 int tl_fetch_set_error_format (int ,char*,...) ;
 TYPE_4__* types ;

int rpc_get_fields (int type_id, long long mask, char *s, int len) {
  if (len % sizeof (int) != 0 || len == 0) {
    return -1;
  }

  type_desc *t = &types[type_id];
  if ((mask & ((1ll << t->field_i) - 1)) != mask) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong mask = %llx specified", mask);
    return -1;
  }

  int *a = (int *)s;
  int *a_end = (int *)(s + len);

  int id;
  field_changes_n = 0;
  location_changes_n = 0;
  for (id = 0; id < t->field_i; id++) {
    if ((mask >> id) & 1) {
      field_changes[field_changes_n].v_fid = id;
      int f_type = field_changes[field_changes_n].type = t->fields[id].type;

      switch (f_type) {
        case 131:
          if (a_end - a < 1) {
            return -1;
          }
          field_changes[field_changes_n].v_int = *a;
          a++;
          break;
        case 130:
          if (a_end - a < 2) {
            return -1;
          }
          field_changes[field_changes_n].v_long = *(long long *)a;
          a += 2;
          break;
        case 132:
          if (a_end - a < 2) {
            return -1;
          }
          field_changes[field_changes_n].v_double = *(double *)a;
          a += 2;
          break;
        case 128: {
          if (a_end == a) {
            return -1;
          }
          char *str = (char *)a;
          a++;
          int result_len = (unsigned char)*str++;
          if (result_len < 254) {
            if (a_end - a < (result_len >> 2)) {
              return -1;
            }
            a += (result_len >> 2);
          } else if (result_len == 254) {
            result_len = (unsigned char)str[0] + ((unsigned char)str[1] << 8) + ((unsigned char)str[2] << 16);
            str += 3;
            if (a_end - a < ((result_len + 3) >> 2)) {
              return -1;
            }
            a += ((result_len + 3) >> 2);
          } else {
            return -1;
          }

          field_changes[field_changes_n].v_string_len = result_len;
          field_changes[field_changes_n].v_string = str;
          break;
        }
        case 129: {
          if (a_end - a < 1) {
            return -1;
          }
          int cnt = *a++;
          while (cnt--) {
            if (location_changes_n == MAX_LOCATIONS) {
              tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Too much locations specified");
              return -1;
            }
            if (a_end - a < 1) {
              return -1;
            }
            location_changes[location_changes_n].v_fid = id;
            int type = *a++;
            if (type == TL_PHOTO_PHOTO_LOCATION || type == TL_PHOTO_AUDIO_LOCATION || type == TL_PHOTO_VIDEO_LOCATION) {
              location_changes[location_changes_n].is_location_engine = 0;
              if (a_end - a < 5) {
                return -1;
              }
              location_changes[location_changes_n].location_old.server_id = *a++;
              location_changes[location_changes_n].location_old.server_id2 = *a++;
              location_changes[location_changes_n].location_old.orig_owner_id = *a++;
              location_changes[location_changes_n].location_old.orig_album_id = *a++;

              char *str = (char *)a;
              a++;
              int photo_len = (unsigned char)*str++;
              if (photo_len < 127) {
                if (a_end - a < (photo_len >> 2)) {
                  return -1;
                }
                a += (photo_len >> 2);
              } else {
                return -1;
              }

              location_changes[location_changes_n].location_old.photo_len = photo_len;
              memcpy (location_changes[location_changes_n].location_old.photo, str, photo_len);
            } else if (type == TL_PHOTO_PHOTO_LOCATION_STORAGE || type == TL_PHOTO_AUDIO_LOCATION_STORAGE || type == TL_PHOTO_VIDEO_LOCATION_STORAGE) {
              location_changes[location_changes_n].is_location_engine = 1;
              if (a_end - a < 7) {
                return -1;
              }
              location_changes[location_changes_n].location_engine.rotate = *a++;
              int size = *a++;
              if ((size & 255) != 1 || (size >> 16) != 0) {
                tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Wrong size specified. Size must contain exactly one symbol 'a' - 'z'");
                return -1;
              }
              location_changes[location_changes_n].location_engine.size = (size >> 8) & 255;
              location_changes[location_changes_n].location_engine.server = *a++;
              location_changes[location_changes_n].location_engine.volume_id = *a++;
              location_changes[location_changes_n].location_engine.local_id = *a++;
              location_changes[location_changes_n].location_engine.extra = *a++;

              char *str = (char *)a;
              a++;
              int secret_len = (unsigned char)*str++;
              char base64url_secret[12];
              if (secret_len < 12) {
                if (a_end - a < (secret_len >> 2)) {
                  return -1;
                }
                a += (secret_len >> 2);
              } else {
                tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Url_secret is too long");
                return -1;
              }

              memcpy (base64url_secret, str, secret_len);
              base64url_secret[secret_len] = 0;

              if (base64url_to_secret (base64url_secret, &location_changes[location_changes_n].location_engine.secret) != 0) {
                tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Can't decode url_secret");
                return -1;
              }
            } else {
              return -1;
            }

            location_changes_n++;
          }
          field_changes_n--;
          break;
        }
      }

      field_changes_n++;
    }
  }

  if (a != a_end) {
    tl_fetch_set_error_format (TL_ERROR_BAD_VALUE, "Not all data fetched");
    return -1;
  }
  return field_changes_n;
}
