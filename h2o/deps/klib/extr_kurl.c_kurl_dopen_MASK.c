#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {int fd; int m_buf; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ kurl_t ;

/* Variables and functions */
 int KU_DEF_BUFLEN ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

kurl_t *FUNC4(int fd)
{
	kurl_t *ku;
	ku = (kurl_t*)FUNC0(1, sizeof(kurl_t));
	ku->fd = fd;
	ku->m_buf = KU_DEF_BUFLEN;
	ku->buf = (uint8_t*)FUNC0(ku->m_buf, 1);
	if (FUNC3(ku, 0) < 0 || FUNC1(ku) <= 0) {
		FUNC2(ku);
		return 0;
	}
	return ku;
}