
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int MAX_RATES ;
 int do_incr_rate (long long,long long) ;
 int do_incr_rate2 (long long,long long) ;
 int do_incr_rate_new (long long,int,long long) ;
 int get_single_rate (int*,long long,int) ;
 int get_sorting_mode (char const) ;
 int sprintf (char*,char*,int) ;
 int sscanf (char const*,char*,int*,...) ;
 int vkprintf (int,char*,long long,...) ;
 int write_out (int *,char*,int) ;

__attribute__((used)) static int increment_rate (struct connection *c, const char *key, int len, long long drate) {
  int rate;
  long long item_id = 0;
  int owner_id, short_id, op = 0, res;
  static char value[32];
  int p = get_sorting_mode (*key);

  vkprintf (4, "p = %d, *key=%c\n", p, *key);

  if (p >= 0 && p < MAX_RATES) {
    if (sscanf (key+1, "ate%d_%d", &owner_id, &short_id) == 2) {
      if (owner_id && short_id > 0) {
        item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
        op = p+1;
      }
    } else if (sscanf (key+1, "ate%d", &short_id) == 1) {
      if (short_id > 0) {
        item_id = short_id;
        op = p+1;
      }
    }
  }

  vkprintf (3, "incr: item_id=%lld\n", (long long)item_id);

  if (op > 0) {
    switch(op) {
      case 1:
        res = do_incr_rate(item_id, drate);
        break;
      case 2:
        res = do_incr_rate2(item_id, drate);
        break;
      default:
        res = do_incr_rate_new (item_id, p, drate);
        break;
    }
    if (res) {
      if (!get_single_rate (&rate, item_id, p)) {
        return -1;
      }
      write_out (&c->Out, value, sprintf (value, "%d\r\n", rate));
      return 0;
    }
  }

  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  return 0;
}
