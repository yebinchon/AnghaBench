
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__** k; int * r; } ;
typedef TYPE_1__ qkey_group ;
struct TYPE_6__ {int subscribed; int lock; } ;


 int CLOCK_MONOTONIC ;
 int KEY_LEN ;
 int LOG_WARNINGS ;
 int dl_log_add (int ,int,char*,int,int,...) ;
 int get_utime (int ) ;
 int memcmp (char*,char*,int) ;
 TYPE_1__* qkey_group_alloc (int) ;
 int strlen (char*) ;
 TYPE_3__* validate_key (char*,int,int,int,int,int *) ;

qkey_group *validate_key_group (char *keys, int id, int ip, int *req_ts, int req_ts_n, int a_release) {
  int kn = strlen (keys);
  if (kn % KEY_LEN) {
    dl_log_add (LOG_WARNINGS, 1, "Failed : 2. kn %% KEY_LEN : %d %% %d\n", kn, KEY_LEN);
    return ((void*)0);
  }
  kn /= KEY_LEN;
  if (kn != req_ts_n || kn <= 0) {
    dl_log_add (LOG_WARNINGS, 1, "Failed : 2. kn != req_ts_n || kn <= 0 : %d != %d || %d <= 0\n", kn, req_ts_n, kn);
    return ((void*)0);
  }

  int i, j;
  for (i = 0; i < kn; i++) {
    for (j = i + 1; j < kn; j++) {
      if (!memcmp (keys + KEY_LEN * i, keys + KEY_LEN * j, KEY_LEN)) {
        dl_log_add (LOG_WARNINGS, 1, "Failed : 2. Key %d == key %d\n", i, j);
      }
    }
  }

  qkey_group *r = qkey_group_alloc (kn);
  for (i = 0; i < kn; i++) {
    r->k[i] = validate_key (keys + KEY_LEN * i, id, ip, req_ts[i], a_release, &r->r[i]);
    if (r->k[i] != ((void*)0) && !r->k[i]->lock) {
      r->k[i]->subscribed = get_utime (CLOCK_MONOTONIC);
    }
  }

  return r;
}
