#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rating ;
struct TYPE_4__ {long long x; scalar_t__ y; } ;
typedef  TYPE_1__ hmap_pair_ll_int ;
struct TYPE_5__ {int y; } ;

/* Variables and functions */
 scalar_t__ H_ADD ; 
 long long H_MUL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* FUNC1 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  h_id ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__) ; 
 int idn ; 
 int idr ; 
 int* names ; 
 int* names_buff ; 
 int namesn ; 
 int namesr ; 
 int* ratings ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char*) ; 
 int* stemmed_names ; 
 int /*<<< orphan*/  FUNC5 (int*,char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ use_stemmer ; 

int FUNC7 (char *s, int *v, int debug) {
  long long h = 0;
  int i;
  for (i = 0; v[i]; i++) {
    h = h * H_MUL + v[i];
  }

  h += H_ADD;
  hmap_pair_ll_int tmp;
  tmp.x = h;
  tmp.y = 0;
  int *pid = &(FUNC3 (&h_id, tmp)->y);

  if (idn + 3 > idr) {
    int nidr = idr * 2 + 3;
    names = FUNC1 (names, sizeof (int) * nidr, sizeof (int) * idr);
    stemmed_names = FUNC1 (stemmed_names, sizeof (int) * nidr, sizeof (int) * idr);
    ratings = FUNC1 (ratings, sizeof (rating) * nidr, sizeof (rating) * idr);
    ratings[0] = 0;
    idr = nidr;

    FUNC0 (names != NULL);
    FUNC0 (stemmed_names != NULL);
    FUNC0 (ratings != NULL);
  }

  if (*pid == 0) {
    *pid = ++idn;

    int sn = FUNC6 (s);
    if (namesn + sn + 3 > namesr) {
      int nnamesr = namesr * 2 + sn + 3;
      names_buff = FUNC1 (names_buff, sizeof (char) * nnamesr, sizeof (char) * namesr);
      namesr = nnamesr;

      FUNC0 (names_buff != NULL);
    }

    names[idn] = namesn;
    if (use_stemmer) {
      stemmed_names[idn] = FUNC4 (s);
    } else {
      stemmed_names[idn] = idn;
    }
    if (debug) {
      FUNC2 (stderr, "<%s>\n", s);
    }

    FUNC5 (names_buff + namesn, s);
    namesn += sn + 1;
    ratings[idn] = 0;
  }

  return *pid;
}