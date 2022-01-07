
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int MAX_RATES ;
 scalar_t__ get_rates (int*,long long) ;
 scalar_t__ get_single_rate (int*,long long,int) ;
 int get_sorting_mode (char const) ;
 int return_one_key (struct connection*,char const*,char*,int ) ;
 int sprintf (char*,char*,int,...) ;
 int sscanf (char const*,char*,int*,...) ;
 int vkprintf (int,char*,int,char const) ;

__attribute__((used)) static int do_get_rate (struct connection *c, const char *key, int len, int dog_len) {
  int rates[2];
  long long item_id = 0;
  int owner_id, short_id, op = 0;
  static char value[32];

  if (sscanf (key+1, "ate%d_%d ", &owner_id, &short_id) == 2) {
    if (owner_id && short_id > 0) {
      item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
      op = 1;
    }
  } else if (sscanf (key+1, "ate%d ", &short_id) == 1) {
    if (short_id > 0) {
      item_id = short_id;
      op = 1;
    }
  }

  if (op) {
    int p = get_sorting_mode (*key);

    vkprintf (4, "p = %d, *key = %c\n", p, *key);

    if (p >= 0 && p < MAX_RATES) {
      if (get_single_rate (rates, item_id, p)) {
        return return_one_key (c, key - dog_len, value, sprintf (value, "%d", rates[0]));
      }
    }
    op = 0;
  }

  if (sscanf (key, "rates%d_%d ", &owner_id, &short_id) == 2) {
    if (owner_id && short_id > 0) {
      item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
      op = 1;
    }
  } else if (sscanf (key, "rates%d ", &short_id) == 1) {
    if (short_id > 0) {
      item_id = short_id;
      op = 1;
    }
  }

  if (op && get_rates (rates, item_id)) {
    return return_one_key (c, key - dog_len, value, sprintf (value, "%d,%d", rates[0], rates[1]));
  }

  return 0;
}
