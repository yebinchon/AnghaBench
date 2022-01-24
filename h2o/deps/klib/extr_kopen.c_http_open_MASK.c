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

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int,char*,int) ; 
 int FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,...) ; 
 char* FUNC7 (char const*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 char* FUNC10 (char const*,char*) ; 
 int FUNC11 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int) ; 

__attribute__((used)) static int FUNC13(const char *fn)
{
	char *p, *proxy, *q, *http_host, *host, *port, *path, *buf;
	int fd, ret, l;

	/* parse URL; adapted from khttp_parse_url() in knetfile.c */
	if (FUNC10(fn, "http://") != fn) return 0;
	// set ->http_host
	for (p = (char*)fn + 7; *p && *p != '/'; ++p);
	l = p - fn - 7;
	http_host = FUNC0(l + 1, 1);
	FUNC9(http_host, fn + 7, l);
	http_host[l] = 0;
	for (q = http_host; *q && *q != ':'; ++q);
	if (*q == ':') *q++ = 0;
	// get http_proxy
	proxy = FUNC3("http_proxy");
	// set host, port and path
	if (proxy == 0) {
		host = FUNC7(http_host); // when there is no proxy, server name is identical to http_host name.
		port = FUNC7(*q? q : "80");
		path = FUNC7(*p? p : "/");
	} else {
		host = (FUNC10(proxy, "http://") == proxy)? FUNC7(proxy + 7) : FUNC7(proxy);
		for (q = host; *q && *q != ':'; ++q);
		if (*q == ':') *q++ = 0; 
		port = FUNC7(*q? q : "80");
		path = FUNC7(fn);
	}

	/* connect; adapted from khttp_connect() in knetfile.c */
	l = 0;
	fd = FUNC5(host, port);
	buf = FUNC0(0x10000, 1); // FIXME: I am lazy... But in principle, 64KB should be large enough.
	l += FUNC6(buf + l, "GET %s HTTP/1.0\r\nHost: %s\r\n", path, http_host);
	l += FUNC6(buf + l, "\r\n");
	FUNC12(fd, buf, l);
	l = 0;
	while (FUNC4(fd, buf + l, 1)) { // read HTTP header; FIXME: bad efficiency
		if (buf[l] == '\n' && l >= 3)
			if (FUNC8(buf + l - 3, "\r\n\r\n", 4) == 0) break;
		++l;
	}
	buf[l] = 0;
	if (l < 14) { // prematured header
		FUNC1(fd);
		fd = -1;
	}
	ret = FUNC11(buf + 8, &p, 0); // HTTP return code
	if (ret != 200) {
		FUNC1(fd);
		fd = -1;
	}
	FUNC2(buf); FUNC2(http_host); FUNC2(host); FUNC2(port); FUNC2(path);
	return fd;
}