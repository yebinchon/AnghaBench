
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 scalar_t__ R ;
 scalar_t__ R_end ;
 int clear_result_buffer () ;
 int fprintf (int ,char*,int,...) ;
 int prepare_raw_notify_updates (int,int,int,int,int ) ;
 int return_one_key_list (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ;
 int sscanf (char const*,char*,int*,int*,...) ;
 int stderr ;
 int verbosity ;

__attribute__((used)) static int exec_get_raw_notification_updates (struct connection *c, const char *key, int key_len, int dog_len) {
  int user_id;
  int mask = -1, st_time = 0, end_time = 0, x = 0, raw = 0;

  if (verbosity >= 2) {
    fprintf (stderr, "exec_get_raw_notifications (%p, %s, %d, %d)\n", c, key, key_len, dog_len);
  }

  if (*key == '%') {
    raw = 1;
  }

  if ((sscanf (key+raw, "raw_notification_updates%d[%d,%d]:%n%d", &mask, &st_time, &end_time, &x, &user_id) >= 4 ||
       sscanf (key+raw, "raw_notification_updates%n%d", &x, &user_id) >= 1) && x > 0) {
    if (verbosity >= 3) {
      fprintf (stderr, "mask = %d, st_time = %d, end_time = %d, x = %d, user_id = %d\n", mask, st_time, end_time, x, user_id);
    }
    x += raw;

    clear_result_buffer ();
    int res = prepare_raw_notify_updates (user_id, mask, st_time, end_time, 0);
    if (verbosity > 1) {
      fprintf (stderr, "prepare_raw_updates(%d) = %d\n", user_id, res);
    }
    if (res >= 0) {
      return return_one_key_list (c, key-dog_len, dog_len + key_len, 0x7fffffff, -raw, R, R_end - R);
    }
  }
  return 0;
}
