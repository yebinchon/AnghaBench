#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct udp_socket {int flags; int /*<<< orphan*/  send_queue_len; int /*<<< orphan*/  send_queue_bytes; scalar_t__ send_queue_last; struct udp_message* send_queue; int /*<<< orphan*/  fd; TYPE_1__* type; } ;
struct TYPE_6__ {scalar_t__ total_bytes; } ;
struct udp_message {int port; struct udp_message* next; TYPE_2__ raw; int /*<<< orphan*/  ipv6; } ;
struct TYPE_7__ {int msg_len; int /*<<< orphan*/  msg_hdr; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* process_send_error ) (struct udp_socket*,struct udp_message*) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int ECONNREFUSED ; 
 int EHOSTDOWN ; 
 int EHOSTUNREACH ; 
 int EINTR ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOBUFS ; 
 int ENONET ; 
 int ENOPROTOOPT ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int MAX_UDP_SEND_BUFFERS ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int U_ERROR ; 
 int U_ERRQ ; 
 int U_NOWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct udp_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct udp_message*,int) ; 
 scalar_t__ sendmmsg_supported ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct udp_socket*,struct udp_message*) ; 
 TYPE_3__* udp_send_msgvec ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

int FUNC10 (struct udp_socket *u) {
  int res, count, total = 0, force_sendmsg = 0, drop_bad = 0;
  FUNC9 (2, "udp_writer: %d bytes in %d messages in queue\n", u->send_queue_bytes, u->send_queue_len);

  while (u->send_queue && !(u->flags & U_ERRQ)) {
    if (sendmmsg_supported < 0 || force_sendmsg) {
      count = FUNC4 (u->send_queue, 1);
      FUNC0 (count == 1);

      res = FUNC5 (u->fd, &udp_send_msgvec[0].msg_hdr, MSG_DONTWAIT);
      if (res < 0) {
	if (errno == EINTR || errno == EAGAIN) {
	  continue;
	}
	int keep_errno = errno;
	if (errno == EPERM) {
	  FUNC9 (2, "error in sendmsg() to [%s]:%d: %s, dropping message\n", FUNC6 (u->send_queue->ipv6), u->send_queue->port, FUNC7 (keep_errno));
	  u->type->process_send_error (u, u->send_queue);
	  drop_bad = 1;
	} else if (errno == ECONNREFUSED || errno == EHOSTUNREACH || errno == EHOSTDOWN || errno == ENETUNREACH || errno == ENONET || errno == EMSGSIZE || errno == EOPNOTSUPP || errno == ENOPROTOOPT || errno == ENOBUFS) {
	  u->flags |= U_ERRQ;
	  break;
	} else {
	  FUNC1 (stderr, "error in sendmsg() to [%s]:%d: %s\n", FUNC6 (u->send_queue->ipv6), u->send_queue->port, FUNC7 (keep_errno));
	  u->flags |= U_NOWR | U_ERROR;
	  return res;
	}
      } else {
	udp_send_msgvec[0].msg_len = res;
      }
      force_sendmsg = 0;
      res = 1;
    } else {
      count = FUNC4 (u->send_queue, MAX_UDP_SEND_BUFFERS);
      FUNC0 (count > 0);

      res = FUNC3 (u->fd, udp_send_msgvec, count, MSG_DONTWAIT);
      if (res < 0) {
	if (sendmmsg_supported < 0 || errno == EINTR || errno == EAGAIN) {
	  continue;
	}
	if (errno == EPERM) {
	  force_sendmsg = 1;
	  continue;
	} else if (errno == ECONNREFUSED || errno == EHOSTUNREACH || errno == EHOSTDOWN || errno == ENETUNREACH || errno == ENONET || errno == EMSGSIZE || errno == EOPNOTSUPP || errno == ENOPROTOOPT || errno == ENOBUFS) {
	  u->flags |= U_ERRQ;
	  break;
	} else {
	  FUNC1 (stderr, "error in sendmmsg(): %m\n");
	  u->flags |= U_NOWR | U_ERROR;
	  return res;
	}
      }
    }
    if (!res) {
      u->flags |= U_NOWR;
    }
    if (!drop_bad) {
      total += res;
    }
    int i;
    for (i = 0; i < res; i++) {
      struct udp_message *m = u->send_queue;
      FUNC0 (udp_send_msgvec[i].msg_len == m->raw.total_bytes || drop_bad);
      u->send_queue_bytes -= m->raw.total_bytes;
      u->send_queue_len--;
      u->send_queue = m->next;
      FUNC2 (m);
    }
    if (!u->send_queue) {
      u->send_queue_last = 0;
    }
    FUNC9 (2, "sendmmsg: %d datagrams %s (%d total); %d bytes in %d messages still in queue\n", res, drop_bad ? "dropped" : "sent", total, u->send_queue_bytes, u->send_queue_len);
    drop_bad = 0;
  }
  return total;
}