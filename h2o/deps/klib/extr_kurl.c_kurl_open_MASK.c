#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {scalar_t__ url; scalar_t__ date; scalar_t__ auth; } ;
typedef  TYPE_1__ s3aux_t ;
struct TYPE_11__ {int fd; long hdr; int m_buf; int /*<<< orphan*/ * buf; int /*<<< orphan*/  curl; int /*<<< orphan*/  multi; } ;
typedef  TYPE_2__ kurl_t ;
struct TYPE_12__ {char* s3keyid; char* s3secretkey; char* s3key_fn; } ;
typedef  TYPE_3__ kurl_opt_t ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_FOLLOWLOCATION ; 
 int /*<<< orphan*/  CURLOPT_HTTPHEADER ; 
 int /*<<< orphan*/  CURLOPT_NOSIGNAL ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYHOST ; 
 int /*<<< orphan*/  CURLOPT_SSL_VERIFYPEER ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  CURLOPT_WRITEDATA ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int CURL_MAX_WRITE_SIZE ; 
 int KU_DEF_BUFLEN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (long,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char const* FUNC12 (char const*,char*) ; 
 long write_cb ; 

kurl_t *FUNC13(const char *url, kurl_opt_t *opt)
{
	extern s3aux_t FUNC14(const char *url, const char *_id, const char *_secret, const char *fn);
	const char *p, *q;
	kurl_t *ku;
	int fd = -1, is_file = 1, failed = 0;

	p = FUNC12(url, "://");
	if (p && *p) {
		for (q = url; q != p; ++q)
			if (!FUNC7(*q)) break;
		if (q == p) is_file = 0;
	}
	if (is_file && (fd = FUNC10(url, O_RDONLY)) < 0) return 0;

	ku = (kurl_t*)FUNC0(1, sizeof(kurl_t));
	ku->fd = is_file? fd : -1;
	if (!FUNC9(ku)) {
		ku->multi = FUNC3();
		ku->curl  = FUNC1();
		if (FUNC12(url, "s3://") == url) {
			s3aux_t a;
			a = FUNC14(url, (opt? opt->s3keyid : 0), (opt? opt->s3secretkey : 0), (opt? opt->s3key_fn : 0));
			if (a.url == 0 || a.date == 0 || a.auth == 0) {
				FUNC8(ku);
				return 0;
			}
			ku->hdr = FUNC4(ku->hdr, a.date);
			ku->hdr = FUNC4(ku->hdr, a.auth);
			FUNC2(ku->curl, CURLOPT_URL, a.url);
			FUNC2(ku->curl, CURLOPT_HTTPHEADER, ku->hdr);
			FUNC6(a.date); FUNC6(a.auth); FUNC6(a.url);
		} else FUNC2(ku->curl, CURLOPT_URL, url);
		FUNC2(ku->curl, CURLOPT_WRITEDATA, ku);
		FUNC2(ku->curl, CURLOPT_VERBOSE, 0L);
		FUNC2(ku->curl, CURLOPT_NOSIGNAL, 1L);
		FUNC2(ku->curl, CURLOPT_WRITEFUNCTION, write_cb);
		FUNC2(ku->curl, CURLOPT_SSL_VERIFYPEER, 0L);
		FUNC2(ku->curl, CURLOPT_SSL_VERIFYHOST, 0L);
		FUNC2(ku->curl, CURLOPT_FOLLOWLOCATION, 1L);
	}
	ku->m_buf = KU_DEF_BUFLEN;
	if (!FUNC9(ku) && ku->m_buf < CURL_MAX_WRITE_SIZE * 2)
		ku->m_buf = CURL_MAX_WRITE_SIZE * 2; // for remote files, the buffer set to 2*CURL_MAX_WRITE_SIZE
	ku->buf = (uint8_t*)FUNC0(ku->m_buf, 1);
	if (FUNC9(ku)) failed = (FUNC5(ku) <= 0);
	else failed = (FUNC11(ku, 0) < 0 || FUNC5(ku) <= 0);
	if (failed) {
		FUNC8(ku);
		return 0;
	}
	return ku;
}