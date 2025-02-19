
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int n; int filled; TYPE_1__* h; } ;
struct TYPE_6__ {long long key; int value; } ;


 int MAX_RES ;
 int Q_limit ;
 int * R ;
 int* RS ;
 int R_cnt ;
 int assert (int) ;
 int exit (int) ;
 long long extract_hash_item (int ) ;
 int fprintf (int ,char*,...) ;
 int hashmap_ll_int_free (TYPE_2__*) ;
 int hashmap_ll_int_get (TYPE_2__*,long long const,int*) ;
 int hashmap_ll_int_init (TYPE_2__*,int) ;
 TYPE_2__ hm ;
 char* last_search_query ;
 char* log_cur_pos () ;
 int rebuild_hashmap_calls ;
 int stderr ;
 int vkprintf (int,char*,int,int ) ;

void rebuild_hashmap (void) {
  rebuild_hashmap_calls++;
  vkprintf (2, "rebuild_hashmap: old hashmap size = %d, Q_limit = %d\n", hm.size, Q_limit);
  int i;
  int n = hm.n << 1;

  if (n > MAX_RES + 10) {
    n = MAX_RES + 10;
  }
  hashmap_ll_int_free (&hm);
  if (!hashmap_ll_int_init (&hm, n)) {
    fprintf (stderr, "Not enough memory for allocate hash table for storing %d entries.\n", n);
    exit (2);
  }
  for (i = 1; i <= R_cnt; i++) {
    const long long hc = extract_hash_item (R[i]);
    if (hc) {
      int slot;
      int r = hashmap_ll_int_get (&hm, hc, &slot);
      if (r) {
        fprintf (stderr, "log_cur_pos ()\t%lld\n", log_cur_pos ());
        fprintf (stderr, "last_search_query\t%s\n", last_search_query);
        assert (!r);
      }
      hm.h[slot].key = hc;
      hm.h[slot].value = i;
      hm.filled++;
      RS[i] = slot;
    } else {
      RS[i] = hm.size;
    }
  }
}
