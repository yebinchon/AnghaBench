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
struct skd_request_context {int /*<<< orphan*/  status; } ;
struct request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*,int /*<<< orphan*/ ) ; 
 struct skd_request_context* FUNC1 (struct request*) ; 

__attribute__((used)) static void FUNC2(struct request *req)
{
	struct skd_request_context *skreq = FUNC1(req);

	FUNC0(req, skreq->status);
}