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
struct item {int item_id; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct item** Items ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int tot_items ; 

void FUNC9 (char *filename) {
  int i;
  FILE *f = FUNC4 (filename, "w");
  if (f == NULL) {
    FUNC7 ("fopen (\"%s\", \"w\") fail. %m\n", filename);
    FUNC1 (1);
  }
  FUNC8 ();
  for (i = 0; i < tot_items; i++) {
    struct item *I = Items[i];
    int t = (int) (I->item_id >> 32);
    if (t) {
      FUNC5 (f, "%d_%d\n", (int) I->item_id, t);
    } else {
      FUNC5 (f, "%d\n", (int) I->item_id);
    }
  }
  int fd = FUNC3 (f);
  FUNC0 (fd >= 0);
  FUNC0 (!FUNC6 (fd));
  FUNC0 (!FUNC2 (f));
}