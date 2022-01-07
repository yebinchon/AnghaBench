
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct item_with_rating {int V; int * I; } ;
typedef int item_t ;
struct TYPE_6__ {int size; scalar_t__ filled; scalar_t__ n; TYPE_1__* h; } ;
struct TYPE_5__ {int value; long long key; } ;


 int Q_limit ;
 int ** R ;
 size_t* RS ;
 scalar_t__* RV ;
 int R_cnt ;
 int R_tot ;
 int R_tot_groups ;
 int R_tot_undef_hash ;
 int assert (int) ;
 int evaluate_rating (int *,int) ;
 int exit (int) ;
 long long extract_hash_item (int *) ;
 int fprintf (int ,char*) ;
 scalar_t__ hashmap_ll_int_get (TYPE_2__*,long long const,int*) ;
 int hashmap_ll_int_init (TYPE_2__*,int) ;
 int heapify_front (struct item_with_rating*,int,int) ;
 TYPE_2__ hm ;
 int order ;
 int rebuild_hashmap () ;
 int stderr ;

void store_res_group_mode (item_t *I, int priority) {
  if (R_tot == 1) {
    int hs = 2 * Q_limit;
    if (hs < 600) { hs = 600; }
    if (!hashmap_ll_int_init (&hm, hs)) {
      fprintf (stderr, "Not enough memory for allocate hash table\n");
      exit (2);
    }
  }

  const long long hc = extract_hash_item (I);

  if (!hc) {
    R_tot_undef_hash++;
  }

  struct item_with_rating tmp, *E = &tmp;
  E->V = evaluate_rating (I, priority);

  if (order == 2) {
    E->V = -(E->V + 1);
  }


  if (R_cnt == Q_limit && E->V >= RV[1]) { return; }

  int slot = hm.size;
  E->I = I;



  if (hc && hashmap_ll_int_get (&hm, hc, &slot)) {

    int pos = hm.h[slot].value;
    if (pos != -1) {

      assert (pos >= 1 && pos <= R_cnt);
      if (E->V < RV[pos]) {

        heapify_front (E, pos, slot);
      }
    } else {

      hm.h[RS[1]].value = -1;
      heapify_front (E, 1, slot);
    }
  } else {

    R_tot_groups++;
    if (hc) {
      if (hm.filled >= hm.n) {
        rebuild_hashmap ();
        hashmap_ll_int_get (&hm, hc, &slot);
      }
      hm.filled++;
      hm.h[slot].key = hc;
    }
    if (R_cnt == Q_limit) {
      hm.h[RS[1]].value = -1;
      heapify_front (E, 1, slot);
    } else {
      int i = ++R_cnt;
      while (i > 1) {
        int j = (i >> 1);
        if (RV[j] >= E->V) { break; }
        R[i] = R[j];
        RV[i] = RV[j];
        hm.h[RS[i] = RS[j]].value = i;
        i = j;
      }
      R[i] = E->I;
      RV[i] = E->V;
      hm.h[RS[i] = slot].value = i;
    }
  }
}
