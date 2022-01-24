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
struct udp_message {scalar_t__ next; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 struct udp_message* FUNC2 (int) ; 
 scalar_t__ msg_out ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  sent_ack_packets ; 
 int /*<<< orphan*/  sent_data_packets ; 
 int /*<<< orphan*/  sent_error_packets ; 
 int /*<<< orphan*/  sent_oack_packets ; 
 int /*<<< orphan*/  sent_rrq_packets ; 
#define  tftp_ack 132 
#define  tftp_data 131 
#define  tftp_error 130 
 int FUNC4 () ; 
#define  tftp_oack 129 
#define  tftp_rrq 128 
 int tftp_udp_sent_bytes ; 
 int /*<<< orphan*/  tftp_udp_sent_packets ; 
 int verbosity ; 

__attribute__((used)) static struct udp_message *FUNC5 (int len) {
  switch (FUNC4 ()) {
  case tftp_rrq:
    sent_rrq_packets++;
    break;
  case tftp_ack:
    sent_ack_packets++;
    break;
  case tftp_data:
    sent_data_packets++;
    break;
  case tftp_oack:
    sent_oack_packets++;
    break;
  case tftp_error:
    sent_error_packets++;
    break;
  }
  tftp_udp_sent_packets++;
  tftp_udp_sent_bytes += len;
  if (verbosity >= 3) {
    FUNC1 (msg_out, msg_out + len);
  }
  struct udp_message *a = FUNC2 (sizeof (struct udp_message));
  FUNC0 (FUNC3 (&a->raw, msg_out, len) == len);
  a->next = 0;
  return a;
}