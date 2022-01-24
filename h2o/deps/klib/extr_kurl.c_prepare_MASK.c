#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ off0; scalar_t__ l_buf; scalar_t__ p_buf; int /*<<< orphan*/  curl; int /*<<< orphan*/  multi; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ kurl_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_RESUME_FROM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(kurl_t *ku, int do_seek)
{
	if (FUNC3(ku)) {
		if (do_seek && FUNC4(ku->fd, ku->off0, SEEK_SET) != ku->off0)
			return -1;
	} else { // FIXME: for S3, we need to re-authorize
		int rc;
		rc = FUNC2(ku->multi, ku->curl);
		rc = FUNC0(ku->curl, CURLOPT_RESUME_FROM, ku->off0);
		rc = FUNC1(ku->multi, ku->curl);
	}
	ku->p_buf = ku->l_buf = 0; // empty the buffer
	return 0;
}