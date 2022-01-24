#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cur1; scalar_t__ cur0; } ;
typedef  TYPE_1__ iheap_en_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,long long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,long long) ; 

__attribute__((used)) inline static int FUNC3 (iheap_en_t *A, long long item_id) {
  if (A->cur0) {
    FUNC1 (A, item_id);
  }
  if (A->cur1) {
    FUNC2 (A, item_id);
  }
  return FUNC0 (A);
}