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
struct udp_target {int dummy; } ;
struct process_id {int /*<<< orphan*/  port; int /*<<< orphan*/  ip; } ;

/* Variables and functions */
 struct udp_target* FUNC0 (struct process_id*,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 

struct udp_target *FUNC3 (struct process_id *PID, int *was_created) {
  static unsigned char ipv6[16];
  FUNC2 (ipv6, FUNC1 (PID->ip));  
  return FUNC0 (PID, 0, ipv6, PID->port, was_created);
}