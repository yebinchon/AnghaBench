#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int dummy; } ;
struct TYPE_4__ {int crypto_flags; int in_packet_num; } ;
struct TYPE_3__ {int (* rpc_ready ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 TYPE_1__* FUNC1 (struct connection*) ; 
 int FUNC2 (struct connection*) ; 

int FUNC3 (struct connection *c) {
  FUNC0(c)->crypto_flags = 512 + 1;
  FUNC0(c)->in_packet_num = -3;
  return FUNC1(c)->rpc_ready ? FUNC1(c)->rpc_ready (c) : 0;
}