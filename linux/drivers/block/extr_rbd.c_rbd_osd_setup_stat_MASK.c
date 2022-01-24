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
struct page {int dummy; } ;
struct ceph_timespec {int dummy; } ;
struct ceph_osd_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEPH_OSD_OP_STAT ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int FUNC1 (struct page**) ; 
 struct page** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ceph_osd_request*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ceph_osd_request*,int,struct page**,int,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct ceph_osd_request *osd_req, int which)
{
	struct page **pages;

	/*
	 * The response data for a STAT call consists of:
	 *     le64 length;
	 *     struct {
	 *         le32 tv_sec;
	 *         le32 tv_nsec;
	 *     } mtime;
	 */
	pages = FUNC2(1, GFP_NOIO);
	if (FUNC0(pages))
		return FUNC1(pages);

	FUNC3(osd_req, which, CEPH_OSD_OP_STAT, 0);
	FUNC4(osd_req, which, pages,
				     8 + sizeof(struct ceph_timespec),
				     0, false, true);
	return 0;
}