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
struct seq_file {int dummy; } ;
struct drbd_request {unsigned int rq_state; scalar_t__ master_bio; } ;

/* Variables and functions */
 unsigned int RQ_COMPLETION_SUSP ; 
 unsigned int RQ_EXP_BARR_ACK ; 
 unsigned int RQ_EXP_RECEIVE_ACK ; 
 unsigned int RQ_EXP_WRITE_ACK ; 
 unsigned int RQ_IN_ACT_LOG ; 
 unsigned int RQ_LOCAL_ABORTED ; 
 unsigned int RQ_LOCAL_COMPLETED ; 
 unsigned int RQ_LOCAL_OK ; 
 unsigned int RQ_LOCAL_PENDING ; 
 unsigned int RQ_NET_DONE ; 
 unsigned int RQ_NET_OK ; 
 unsigned int RQ_NET_PENDING ; 
 unsigned int RQ_NET_QUEUED ; 
 unsigned int RQ_NET_SENT ; 
 unsigned int RQ_NET_SIS ; 
 unsigned int RQ_POSTPONED ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,unsigned int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m, struct drbd_request *req)
{
	unsigned int s = req->rq_state;
	char sep = ' ';
	FUNC1(m, "\t0x%08x", s);
	FUNC1(m, "\tmaster: %s", req->master_bio ? "pending" : "completed");

	/* RQ_WRITE ignored, already reported */
	FUNC2(m, "\tlocal:");
	FUNC0(m, s & RQ_IN_ACT_LOG, &sep, "in-AL");
	FUNC0(m, s & RQ_POSTPONED, &sep, "postponed");
	FUNC0(m, s & RQ_COMPLETION_SUSP, &sep, "suspended");
	sep = ' ';
	FUNC0(m, s & RQ_LOCAL_PENDING, &sep, "pending");
	FUNC0(m, s & RQ_LOCAL_COMPLETED, &sep, "completed");
	FUNC0(m, s & RQ_LOCAL_ABORTED, &sep, "aborted");
	FUNC0(m, s & RQ_LOCAL_OK, &sep, "ok");
	if (sep == ' ')
		FUNC2(m, " -");

	/* for_each_connection ... */
	FUNC1(m, "\tnet:");
	sep = ' ';
	FUNC0(m, s & RQ_NET_PENDING, &sep, "pending");
	FUNC0(m, s & RQ_NET_QUEUED, &sep, "queued");
	FUNC0(m, s & RQ_NET_SENT, &sep, "sent");
	FUNC0(m, s & RQ_NET_DONE, &sep, "done");
	FUNC0(m, s & RQ_NET_SIS, &sep, "sis");
	FUNC0(m, s & RQ_NET_OK, &sep, "ok");
	if (sep == ' ')
		FUNC2(m, " -");

	FUNC1(m, " :");
	sep = ' ';
	FUNC0(m, s & RQ_EXP_RECEIVE_ACK, &sep, "B");
	FUNC0(m, s & RQ_EXP_WRITE_ACK, &sep, "C");
	FUNC0(m, s & RQ_EXP_BARR_ACK, &sep, "barr");
	if (sep == ' ')
		FUNC2(m, " -");
	FUNC1(m, "\n");
}