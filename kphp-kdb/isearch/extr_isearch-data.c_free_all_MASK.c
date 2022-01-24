#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tdata ;
typedef  int /*<<< orphan*/  rating ;
typedef  int /*<<< orphan*/  q_info ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int STAT_ST ; 
 int /*<<< orphan*/  aho_black_list ; 
 int aho_black_list_size ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  h_id ; 
 int /*<<< orphan*/  h_pref ; 
 int /*<<< orphan*/  h_q ; 
 int /*<<< orphan*/  h_word ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int idr ; 
 int /*<<< orphan*/  names ; 
 int /*<<< orphan*/  names_buff ; 
 int namesr ; 
 int prefr ; 
 int /*<<< orphan*/  q_entry ; 
 int /*<<< orphan*/  q_rev ; 
 int qr ; 
 int /*<<< orphan*/  ratings ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stemmed_names ; 
 int /*<<< orphan*/  suggs ; 
 scalar_t__ verbosity ; 
 int wordr ; 
 int /*<<< orphan*/  words ; 

void FUNC5 (void) {
  if (verbosity) {
#ifdef TYPES
    dl_free (words, wordr * sizeof (tdata));
    hmap_ll_int_free (&h_word);
#endif

    FUNC1 (suggs, prefr * sizeof (data));
    FUNC1 (ratings, idr * sizeof (rating));
    FUNC1 (names, idr * sizeof (int));
    FUNC1 (stemmed_names, idr * sizeof (int));
    FUNC1 (names_buff, namesr * sizeof (char));
    FUNC1 (q_entry, (qr + STAT_ST) * sizeof (q_info));
    FUNC1 (q_rev, qr * sizeof (int));

    FUNC4 (&h_pref);
    FUNC4 (&h_id);
    FUNC4 (&h_q);

    FUNC1 (aho_black_list, aho_black_list_size);

    FUNC3 (stderr, "Memory left: %ld\n", FUNC2());
    FUNC0 (FUNC2() == 0);
  }
}