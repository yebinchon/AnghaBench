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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_request*) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC2(struct evhttp_connection *evcon, struct evhttp_request *req)
{
	FUNC0(&evcon->requests, req, next);
	FUNC1(req);
}