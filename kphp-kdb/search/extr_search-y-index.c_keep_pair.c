
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int doc_id; int position; int word; } ;
typedef TYPE_1__ pair_t ;
typedef int hash_t ;


 TYPE_1__* P ;
 scalar_t__ PC ;
 int exit (int) ;
 int fprintf (int ,char*,scalar_t__) ;
 scalar_t__ max_pairs ;
 int stderr ;

void keep_pair (int doc_id, hash_t word, int position) {
  if (PC >= max_pairs) {
    fprintf (stderr, "\nThere are too many pairs (max_pairs = %d).\n"
                     "Try increase max_pairs using -P command line switch.\n", max_pairs);
    exit (1);
  }
  pair_t *P1 = &P[PC++];
  P1->word = word;
  P1->doc_id = doc_id;
  P1->position = position;
}
