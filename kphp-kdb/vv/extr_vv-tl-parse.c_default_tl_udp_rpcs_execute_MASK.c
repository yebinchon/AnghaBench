#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct udp_msg {TYPE_1__* S; } ;
struct TYPE_2__ {int /*<<< orphan*/  PID; } ;

/* Variables and functions */
 int /*<<< orphan*/ * TL_IN_PID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct udp_msg*) ; 

int FUNC2 (struct udp_msg *msg) {  
  FUNC0 ();
  TL_IN_PID = &msg->S->PID;
  FUNC1 (msg);
  return 0;
}