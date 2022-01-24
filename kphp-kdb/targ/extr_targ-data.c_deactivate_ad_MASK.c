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
typedef  int /*<<< orphan*/  user_t ;
struct advert {int* user_list; int users; int ad_id; } ;

/* Variables and functions */
 int /*<<< orphan*/ ** User ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1 (struct advert *A) {
  int *p = A->user_list, *q = p + A->users;
  int ad_id = A->ad_id;
  while (p < q) {
    int uid = *p++;
    user_t *U = User[uid];
    if (U) {
      FUNC0 (U, ad_id);
    }
  }
}