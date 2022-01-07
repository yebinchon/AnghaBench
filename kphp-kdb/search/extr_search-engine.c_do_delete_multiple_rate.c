
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashset_int {int dummy; } ;
struct connection {int In; } ;


 int assert (int) ;
 int delete_hash_query_items ;
 int do_delete_items_with_rate_using_hashset (struct hashset_int*,int) ;
 int func_delete_multiple_rate ;
 int hashset_int_free (struct hashset_int*) ;
 int hashset_int_init (struct hashset_int*,int) ;
 scalar_t__ int_list_foreach (char*,struct hashset_int*,int ) ;
 int read_in (int *,char*,int) ;
 char* value_buff ;

int do_delete_multiple_rate (struct connection *c, int size, int rate_id) {
  char *a = value_buff;
  assert (read_in (&c->In, a, size) == size);
  a[size] = 0;
  int i, n = 1;
  for (i = 0; i < size; i++) {
    if (a[i] == ',') {
      n++;
    }
  }
  if (n < 10) {
    n = 10;
  }
  struct hashset_int H;
  if (!hashset_int_init (&H, n)) {
    return 0;
  }

  if (int_list_foreach (value_buff, &H, func_delete_multiple_rate) < 0) {
    hashset_int_free (&H);
    return 0;
  }

  int t = do_delete_items_with_rate_using_hashset (&H, rate_id);
  delete_hash_query_items += t;
  hashset_int_free (&H);
  return 1;
}
