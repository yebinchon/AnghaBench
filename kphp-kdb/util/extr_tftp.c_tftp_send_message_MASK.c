#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  our_ip_idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  u; TYPE_1__ resend; scalar_t__* tid; int /*<<< orphan*/  source_ipv6; } ;
typedef  TYPE_2__ tftp_connection_t ;
struct udp_message {int /*<<< orphan*/  our_ip_idx; scalar_t__ port; int /*<<< orphan*/  ipv6; } ;

/* Variables and functions */
 int CLIENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ port ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ tftp_rrq ; 
 struct udp_message* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct udp_message*) ; 
 int working_mode ; 

__attribute__((used)) static struct udp_message *FUNC5 (tftp_connection_t *c, int len) {
  struct udp_message *a = FUNC3 (len);
  FUNC1 (a->ipv6, c->source_ipv6, 16);
  a->port = c->tid[1-working_mode];
  if (!a->port) {
    FUNC0 (FUNC2 () == tftp_rrq && working_mode == CLIENT);
    a->port = port;
  }
  a->our_ip_idx = c->resend.our_ip_idx;
  FUNC4 (&c->u, a);
  return a;
}