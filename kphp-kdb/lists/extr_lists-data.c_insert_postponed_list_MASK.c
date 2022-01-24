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
struct lev_generic {int dummy; } ;
typedef  int /*<<< orphan*/  list_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,struct lev_generic*,int) ; 
 int FUNC3 (struct lev_generic*) ; 

int FUNC4 (list_id_t list_id, struct lev_generic *E) {
  int x = FUNC1 (list_id);
  FUNC0 (x >= 0);
  /*if (x < 0) {
    return 0;
  }*/
  int size = FUNC3 (E);
  FUNC2 (x, E, size);
  return 1;
}