
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int do_contained_query (long long,char**) ;
 int return_one_key (struct connection*,char const*,char*,int ) ;
 int sprintf (char*,char*,...) ;
 int sscanf (char const*,char*,int*,int*,...) ;

__attribute__((used)) static int do_contained (struct connection *c, const char *key, int len, int dog_len) {
  int owner_id, short_id, op = 0, x = -1;
  char ch = 0;
  long long item_id;
  static char value[32];
  char *expr;

  if (sscanf (key + 9, "%d_%d%n%c", &owner_id, &short_id, &x, &ch) >= 3 && ch == '(') {
    if (owner_id && short_id > 0 && x >= 0) {
      item_id = (((long long) short_id) << 32) + (unsigned) owner_id;
      expr = (char *) (key + 9 + x);
      op = 1;
    }
  }

  x = -1;
  ch = 0;
  if (!op && sscanf (key + 9, "%d%n%c", &short_id, &x, &ch) >= 2 && ch == '(') {
    if (short_id > 0) {
      item_id = short_id;
      expr = (char *) (key + 9 + x);
      op = 1;
    }
  }

  if (op) {
    int r = do_contained_query (item_id, &expr);
    if (r >= 0) {
      return return_one_key (c, key - dog_len, value, sprintf (value, "%d", r));
    } else {
      return return_one_key (c, key - dog_len, value, sprintf (value, "ERROR near '%.256s'\n", expr));
    }
  }
  return 0;
}
