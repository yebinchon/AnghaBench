#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  clicked_ads; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  treeref_t ;
struct TYPE_5__ {int z; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdSpace ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3 (int user_id, int ad_id) {
  user_t *U = FUNC1 (user_id);
  if (!U) {
    return 0;
  }
  treeref_t N = FUNC2 (AdSpace, U->clicked_ads, ad_id);
  if (!N) {
    return 0;
  }
  int x = FUNC0(AdSpace, N)->z;
  return x + (x >= 0);
}