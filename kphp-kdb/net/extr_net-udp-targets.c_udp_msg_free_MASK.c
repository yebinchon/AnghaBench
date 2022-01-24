#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct udp_msg {int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct udp_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct udp_msg*,int) ; 

void FUNC3 (struct udp_msg *msg) {
  FUNC0 (msg);
  FUNC1 (&msg->raw);
  FUNC2 (msg, sizeof (*msg));
}