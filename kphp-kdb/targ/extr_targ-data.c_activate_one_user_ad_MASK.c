#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  active_ads; int /*<<< orphan*/  clicked_ads; int /*<<< orphan*/  inactive_ads; } ;
typedef  TYPE_1__ user_t ;
typedef  scalar_t__ treeref_t ;
struct intree_node {int x; scalar_t__ z; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdSpace ; 
 struct intree_node* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  active_ad_nodes ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  inactive_ad_nodes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC6 (user_t *U, int ad_id) {
  treeref_t RN;
  U->inactive_ads = FUNC4 (AdSpace, U->inactive_ads, ad_id, &RN);
  if (!RN) {
    if (FUNC3 (AdSpace, U->clicked_ads, ad_id)) {
      return;
    }
    RN = FUNC5 (AdSpace);
    struct intree_node *C = FUNC0 (AdSpace, RN);
    C->x = ad_id;
    C->z = 0;
  } else {
    --inactive_ad_nodes;
  }
  ++active_ad_nodes;
  FUNC1 (!FUNC3 (AdSpace, U->active_ads, ad_id));  // !!! remove later
  U->active_ads = FUNC2 (AdSpace, U->active_ads, RN);
}