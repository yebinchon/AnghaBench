
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rating ;


 int MAX_CNT ;
 size_t MAX_HISTORY ;
 int MAX_K ;
 int MAX_RATING_NUM ;
 int MAX_USR_SIZE ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int buff ;
 int buffer ;
 scalar_t__ changes_memory ;
 scalar_t__ chg_list_get_memory () ;
 int d ;
 int dl_free (int ,int) ;
 int dl_strfree (scalar_t__) ;
 int * dp ;
 int exc ;
 int fprintf (int ,char*,long,...) ;
 int free_header (int *) ;
 scalar_t__ get_changes_memory () ;
 scalar_t__ get_memory_used () ;
 int h_buff ;
 int header ;
 int heap ;
 size_t history_l ;
 scalar_t__* history_q ;
 size_t history_r ;
 scalar_t__ htbl_get_memory () ;
 scalar_t__ htbl_vct_get_memory () ;
 int i_buff ;
 scalar_t__ index_mode ;
 int intersect_buff ;
 int ltbl_free (int *) ;
 int new_h ;
 int new_obj ;
 int object_buf ;
 int object_indexes ;
 int object_ratings ;
 int object_ratings_to_sort ;
 int objects_to_sort ;
 int objects_typeids_to_sort ;
 int stderr ;
 scalar_t__ trp_get_memory () ;
 int type_ids ;
 int user_LRU_unload () ;
 int user_table ;
 scalar_t__ verbosity ;
 int weight ;

void free_all (void) {
  if (verbosity) {
    while (user_LRU_unload() != -1) {
    }

    while (history_l != history_r) {
      dl_strfree (history_q[history_l]);
      history_q[history_l++] = 0;
      if (history_l > MAX_HISTORY) {
        history_l = 0;
      }
    }

    fprintf (stderr, "Memory left : %ld\n", (long)(get_memory_used() - trp_get_memory() - htbl_get_memory() - htbl_vct_get_memory() -
             changes_memory - chg_list_get_memory()));
    fprintf (stderr, "memory used = %ld, trp_memory = %ld, htbl_memory = %ld, changes_memory = %ld, mtf = %lld, vct = %ld\n",
             get_memory_used(), (long)trp_get_memory(), (long)htbl_get_memory(), (long)get_changes_memory(), allocated_metafile_bytes, (long)htbl_vct_get_memory());

    assert ((long)(get_memory_used() - trp_get_memory() - htbl_get_memory() - htbl_vct_get_memory() -
                   changes_memory - chg_list_get_memory()) == 0);

    dl_free (buff, (MAX_CNT + 1) * sizeof (int));

    if (index_mode) {
      dl_free (buffer, MAX_USR_SIZE);
      dl_free (new_obj, MAX_USR_SIZE);
      dl_free (type_ids, (MAX_CNT + 1) * sizeof (long long));
      dl_free (object_ratings, (MAX_CNT + 1) * sizeof (rating) * MAX_RATING_NUM);
      dl_free (object_ratings_to_sort, (MAX_CNT + 1) * sizeof (rating));
      dl_free (h_buff, MAX_USR_SIZE);







    } else {
      int i;
      for (i = 0; i <= MAX_K; i++) {
        dl_free (dp[i], (MAX_CNT + 1) * sizeof (rating));
      }
      dl_free (d, (MAX_CNT + 1) * sizeof (rating));
      dl_free (weight, MAX_CNT * sizeof (rating));

      dl_free (heap, (MAX_CNT + 1) * sizeof (int));
      dl_free (objects_typeids_to_sort, MAX_CNT * sizeof (long long));
      dl_free (objects_to_sort, MAX_CNT * sizeof (int));




      dl_free (exc, (MAX_CNT + 1) * sizeof (int));

    }

    ltbl_free (&user_table);
    free_header (&header);
  }
}
