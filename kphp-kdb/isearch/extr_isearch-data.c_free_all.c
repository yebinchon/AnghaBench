
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdata ;
typedef int rating ;
typedef int q_info ;
typedef int data ;


 int STAT_ST ;
 int aho_black_list ;
 int aho_black_list_size ;
 int assert (int) ;
 int dl_free (int ,int) ;
 scalar_t__ dl_get_memory_used () ;
 int fprintf (int ,char*,scalar_t__) ;
 int h_id ;
 int h_pref ;
 int h_q ;
 int h_word ;
 int hmap_ll_int_free (int *) ;
 int idr ;
 int names ;
 int names_buff ;
 int namesr ;
 int prefr ;
 int q_entry ;
 int q_rev ;
 int qr ;
 int ratings ;
 int stderr ;
 int stemmed_names ;
 int suggs ;
 scalar_t__ verbosity ;
 int wordr ;
 int words ;

void free_all (void) {
  if (verbosity) {





    dl_free (suggs, prefr * sizeof (data));
    dl_free (ratings, idr * sizeof (rating));
    dl_free (names, idr * sizeof (int));
    dl_free (stemmed_names, idr * sizeof (int));
    dl_free (names_buff, namesr * sizeof (char));
    dl_free (q_entry, (qr + STAT_ST) * sizeof (q_info));
    dl_free (q_rev, qr * sizeof (int));

    hmap_ll_int_free (&h_pref);
    hmap_ll_int_free (&h_id);
    hmap_ll_int_free (&h_q);

    dl_free (aho_black_list, aho_black_list_size);

    fprintf (stderr, "Memory left: %lld\n", dl_get_memory_used());
    assert (dl_get_memory_used() == 0);
  }
}
