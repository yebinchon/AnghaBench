
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int timestamp; } ;
typedef TYPE_1__ hash_entry_t ;


 int assert (TYPE_1__*) ;
 int fprintf (int ,char*,TYPE_1__*) ;
 int local_clock () ;
 int lrand48 () ;
 int stderr ;
 int total_items ;
 int tree ;
 int tree_insert (int ,TYPE_1__*,int ) ;
 int verbosity ;

void add_entry (hash_entry_t *entry) {
  if (verbosity >= 4) {
    fprintf (stderr, "add_entry (%p)\n", entry);
  }
  assert (entry);



  entry->timestamp = local_clock ();
  tree = tree_insert (tree, entry, lrand48 ());
  total_items++;
}
