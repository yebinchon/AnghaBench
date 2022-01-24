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
struct timeval {int member_1; int /*<<< orphan*/  member_0; } ;
struct gaic_request_status {int /*<<< orphan*/  cancel_event; int /*<<< orphan*/  request; struct evdns_base* dns_base; struct event_base* base; int /*<<< orphan*/  magic; } ;
struct event_base {int dummy; } ;
struct evdns_base {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAIC_MAGIC ; 
 struct gaic_request_status* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_base*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gaic_request_status*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct event_base*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gaic_request_status*) ; 
 int /*<<< orphan*/  gaic_cancel_request_cb ; 
 int /*<<< orphan*/  gaic_getaddrinfo_cb ; 
 int /*<<< orphan*/  pending ; 

__attribute__((used)) static void
FUNC4(struct event_base *base, struct evdns_base *dns_base)
{
	struct gaic_request_status *status = FUNC0(1,sizeof(*status));
	struct timeval tv = { 0, 10000 };
	status->magic = GAIC_MAGIC;
	status->base = base;
	status->dns_base = dns_base;
	FUNC3(&status->cancel_event, base, -1, 0, gaic_cancel_request_cb,
	    status);
	status->request = FUNC1(dns_base,
	    "foobar.bazquux.example.com", "80", NULL, gaic_getaddrinfo_cb,
	    status);
	FUNC2(&status->cancel_event, &tv);
	++pending;
}