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
struct TYPE_3__ {int /*<<< orphan*/  inter_hashes; int /*<<< orphan*/  uid; scalar_t__ name; struct interest* inter; } ;
typedef  TYPE_1__ user_t ;
struct interest {scalar_t__ text; struct interest* next; } ;

/* Variables and functions */
 scalar_t__ Hc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  q_interests ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (user_t *U) {
  struct interest *I;
  if (!U) {
    return;
  }
  Hc = 0;
  for (I = U->inter; I; I = I->next) {
    FUNC2 (I->text, 1, -1, 0, q_interests);
  }
  if (U->name) {
    FUNC2 (U->name, 1, 2, 0, q_interests);
  }
  FUNC1 (U->uid, U->inter_hashes);
  U->inter_hashes = FUNC3 (0, -1, q_interests);
  FUNC0 (U->uid, U->inter_hashes);
}