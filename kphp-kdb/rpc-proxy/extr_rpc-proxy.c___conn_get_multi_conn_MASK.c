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
struct rpc_cluster_bucket {scalar_t__ RT; TYPE_1__* T; } ;
struct TYPE_3__ {int custom_field; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

int FUNC3 (struct rpc_cluster_bucket *B, void **buf, int n) {
  if (!B->RT) {
    if (B->T->custom_field != -1) {
      FUNC1 (B->T, B->T->custom_field);      
      B->RT = FUNC2 (B->T);
    } else {
      return 0;
    }
  }
  return FUNC0 (B->RT, 0, n, (void *)buf);
}