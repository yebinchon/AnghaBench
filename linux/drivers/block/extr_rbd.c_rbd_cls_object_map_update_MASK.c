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
typedef  int u8 ;
typedef  scalar_t__ u64 ;
struct page {int dummy; } ;
struct ceph_osd_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 scalar_t__ FUNC0 (struct page**) ; 
 int FUNC1 (struct page**) ; 
 struct page** FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void**,int const) ; 
 int FUNC5 (struct ceph_osd_request*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ceph_osd_request*,int,struct page**,int,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct ceph_osd_request *req,
				     int which, u64 objno, u8 new_state,
				     const u8 *current_state)
{
	struct page **pages;
	void *p, *start;
	int ret;

	ret = FUNC5(req, which, "rbd", "object_map_update");
	if (ret)
		return ret;

	pages = FUNC2(1, GFP_NOIO);
	if (FUNC0(pages))
		return FUNC1(pages);

	p = start = FUNC7(pages[0]);
	FUNC3(&p, objno);
	FUNC3(&p, objno + 1);
	FUNC4(&p, new_state);
	if (current_state) {
		FUNC4(&p, 1);
		FUNC4(&p, *current_state);
	} else {
		FUNC4(&p, 0);
	}

	FUNC6(req, which, pages, p - start, 0,
					  false, true);
	return 0;
}