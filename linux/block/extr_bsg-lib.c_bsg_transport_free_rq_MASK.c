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
struct request {int dummy; } ;
struct bsg_job {int /*<<< orphan*/  request; scalar_t__ bidi_rq; int /*<<< orphan*/  bidi_bio; } ;

/* Variables and functions */
 struct bsg_job* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request *rq)
{
	struct bsg_job *job = FUNC0(rq);

	if (job->bidi_rq) {
		FUNC2(job->bidi_bio);
		FUNC1(job->bidi_rq);
	}

	FUNC3(job->request);
}