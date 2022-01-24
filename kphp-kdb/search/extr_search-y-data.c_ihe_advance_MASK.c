#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cur; scalar_t__ cur1; scalar_t__ cur0; } ;
typedef  TYPE_1__ iheap_en_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4 (iheap_en_t *A) {
  FUNC0 (A->cur);
  if (FUNC3 (A->cur == A->cur1)) { return FUNC2 (A); }
  FUNC0 (A->cur == A->cur0);
  return FUNC1 (A);
}