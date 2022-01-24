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
struct timeval {int tv_sec; long tv_usec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ p_buf; scalar_t__ l_buf; int done_reading; scalar_t__ m_buf; scalar_t__ buf; int /*<<< orphan*/  multi; int /*<<< orphan*/  curl; int /*<<< orphan*/  fd; int /*<<< orphan*/  off0; } ;
typedef  TYPE_1__ kurl_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  CURLPAUSE_CONT ; 
 scalar_t__ CURL_MAX_WRITE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,long*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*,struct timespec*) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int FUNC10(kurl_t *ku) // fill the buffer
{
	FUNC1(ku->p_buf == ku->l_buf); // buffer is always used up when fill_buffer() is called; otherwise a bug
	ku->off0 += ku->l_buf;
	ku->p_buf = ku->l_buf = 0;
	if (ku->done_reading) return 0;
	if (FUNC6(ku)) {
		// The following block is equivalent to "ku->l_buf = read(ku->fd, ku->buf, ku->m_buf)" on Mac.
		// On Linux, the man page does not specify whether read() guarantees to read ku->m_buf bytes
		// even if ->fd references a normal file with sufficient remaining bytes.
		while (ku->l_buf < ku->m_buf) {
			int l;
			l = FUNC8(ku->fd, ku->buf + ku->l_buf, ku->m_buf - ku->l_buf);
			if (l == 0) break;
			ku->l_buf += l;
		}
		if (ku->l_buf < ku->m_buf) ku->done_reading = 1;
	} else {
		int n_running, rc;
		fd_set fdr, fdw, fde;
		do {
			int maxfd = -1;
			long curl_to = -1;
			struct timeval to;
			// the following is adaped from docs/examples/fopen.c 
			to.tv_sec = 10, to.tv_usec = 0; // 10 seconds
			FUNC5(ku->multi, &curl_to);
			if (curl_to >= 0) {
				to.tv_sec = curl_to / 1000;
				if (to.tv_sec > 1) to.tv_sec = 1;
				else to.tv_usec = (curl_to % 1000) * 1000;
			}
			FUNC0(&fdr); FUNC0(&fdw); FUNC0(&fde);
			FUNC3(ku->multi, &fdr, &fdw, &fde, &maxfd); // FIXME: check return code
			if (maxfd >= 0 && (rc = FUNC9(maxfd+1, &fdr, &fdw, &fde, &to)) < 0) break;
			if (maxfd < 0) { // check curl_multi_fdset.3 about why we wait for 100ms here
				struct timespec req, rem;
				req.tv_sec = 0; req.tv_nsec = 100000000; // this is 100ms
				FUNC7(&req, &rem);
			}
			FUNC2(ku->curl, CURLPAUSE_CONT);
			rc = FUNC4(ku->multi, &n_running); // FIXME: check return code
		} while (n_running && ku->l_buf < ku->m_buf - CURL_MAX_WRITE_SIZE);
		if (ku->l_buf < ku->m_buf - CURL_MAX_WRITE_SIZE) ku->done_reading = 1;
	}
	return ku->l_buf;
}