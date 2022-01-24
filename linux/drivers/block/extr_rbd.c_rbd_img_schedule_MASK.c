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
struct rbd_img_request {int work_result; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rbd_img_handle_request_work ; 
 int /*<<< orphan*/  rbd_wq ; 

__attribute__((used)) static void FUNC2(struct rbd_img_request *img_req, int result)
{
	FUNC0(&img_req->work, rbd_img_handle_request_work);
	img_req->work_result = result;
	FUNC1(rbd_wq, &img_req->work);
}