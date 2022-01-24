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
struct hts_data {int /*<<< orphan*/ * extra; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  php_worker ;

/* Variables and functions */
 struct hts_data* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 

int FUNC4 (struct connection *c, int who) {
  struct hts_data *D = FUNC0(c);

  php_worker *worker = D->extra;
  if (worker != NULL) {
    FUNC3 (worker, 1, "http connection close");
    int res = FUNC2 (worker);
    D->extra = NULL;
    FUNC1 ("worker is unfinished after closing connection" && res == 1);
  }
  return 0;
}