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
struct TYPE_3__ {struct company* work; int /*<<< orphan*/  uid; } ;
typedef  TYPE_1__ user_t ;
struct company {struct company* next; int /*<<< orphan*/  job; int /*<<< orphan*/  company_name; int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  job_hashes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct company*,int) ; 

__attribute__((used)) static void FUNC3 (user_t *U) {
  struct company *C, *Nx;
  for (C = U->work; C; C = Nx) {
    FUNC0 (U->uid, C->job_hashes);
    FUNC0 (U->uid, C->name_hashes);
    FUNC1 (C->company_name);
    FUNC1 (C->job);
    Nx = C->next;
    FUNC2 (C, sizeof (struct company));
  }
  U->work = 0;
}