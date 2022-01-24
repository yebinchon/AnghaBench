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

/* Variables and functions */
 scalar_t__ DEBUG_UDPDUMP ; 
 scalar_t__ debug_mode ; 
 scalar_t__ FUNC0 (int) ; 
 int port ; 
 scalar_t__ udp_sfd ; 
 scalar_t__ udp_sfd2 ; 

void FUNC1 (void) {
  if (udp_sfd < 0) {
    udp_sfd = FUNC0 (port);
  }
  if (debug_mode == DEBUG_UDPDUMP) {
    if (udp_sfd2 < 0) {
      udp_sfd2 = FUNC0 (68);
    }
  }
}