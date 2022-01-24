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
struct TYPE_3__ {void (* nomem_handler ) (void*) ;void* nomem_handler_data; } ;
typedef  TYPE_1__ jq_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (void*),void*) ; 

void FUNC1(jq_state *jq, void (*nomem_handler)(void *), void *data) {
  FUNC0(nomem_handler, data);
  jq->nomem_handler = nomem_handler;
  jq->nomem_handler_data = data;
}