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
struct udp_socket {int dummy; } ;
struct udp_message {int /*<<< orphan*/  port; int /*<<< orphan*/  ipv6; } ;
struct raw_message {int dummy; } ;
struct process_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PID ; 
 int TL_UDP_OBSOLETE_PID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct process_id*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct raw_message*) ; 
 int FUNC2 (struct raw_message*,int*,int) ; 

void FUNC3 (struct udp_socket *u, struct udp_message *msg, struct process_id *remote_pid, struct process_id *local_pid, int generation) {
  static int z[10];
  z[0] = TL_UDP_OBSOLETE_PID;
  *(struct process_id *)(z + 1) = *local_pid;
  *(struct process_id *)(z + 4) = *local_pid;  
  z[7] = generation;

  struct raw_message raw;
  FUNC0 (FUNC2 (&raw, z, 32) == 32);

  FUNC1 (&PID, remote_pid, generation, msg->ipv6, msg->port, &raw);
}