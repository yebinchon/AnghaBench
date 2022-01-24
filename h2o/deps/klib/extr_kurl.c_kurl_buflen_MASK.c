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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int l_buf; int m_buf; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ kurl_t ;

/* Variables and functions */
 int CURL_MAX_WRITE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

int FUNC3(kurl_t *ku, int len)
{
	if (len <= 0 || len < ku->l_buf) return ku->m_buf;
	if (!FUNC1(ku) && len < CURL_MAX_WRITE_SIZE * 2) return ku->m_buf;
	ku->m_buf = len;
	FUNC0(ku->m_buf);
	ku->buf = (uint8_t*)FUNC2(ku->buf, ku->m_buf);
	return ku->m_buf;
}