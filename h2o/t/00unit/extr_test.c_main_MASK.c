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
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_issues293 ; 
 int /*<<< orphan*/  test_lib__common__balancer__least_conn_c ; 
 int /*<<< orphan*/  test_lib__common__balancer__roundrobin_c ; 
 int /*<<< orphan*/  test_lib__common__cache_c ; 
 int /*<<< orphan*/  test_lib__common__hostinfo_c ; 
 int /*<<< orphan*/  test_lib__common__httpclient_c ; 
 int /*<<< orphan*/  test_lib__common__multithread_c ; 
 int /*<<< orphan*/  test_lib__common__serverutil_c ; 
 int /*<<< orphan*/  test_lib__common__socket_c ; 
 int /*<<< orphan*/  test_lib__common__string_c ; 
 int /*<<< orphan*/  test_lib__common__time_c ; 
 int /*<<< orphan*/  test_lib__common__timerwheel_c ; 
 int /*<<< orphan*/  test_lib__common__url_c ; 
 int /*<<< orphan*/  test_lib__core__headers_c ; 
 int /*<<< orphan*/  test_lib__core__proxy_c ; 
 int /*<<< orphan*/  test_lib__core__util_c ; 
 int /*<<< orphan*/  test_lib__handler__fastcgi_c ; 
 int /*<<< orphan*/  test_lib__handler__file_c ; 
 int /*<<< orphan*/  test_lib__handler__gzip_c ; 
 int /*<<< orphan*/  test_lib__handler__headers_c ; 
 int /*<<< orphan*/  test_lib__handler__mimemap_c ; 
 int /*<<< orphan*/  test_lib__handler__redirect_c ; 
 int /*<<< orphan*/  test_lib__http2__cache_digests ; 
 int /*<<< orphan*/  test_lib__http2__casper ; 
 int /*<<< orphan*/  test_lib__http2__hpack ; 
 int /*<<< orphan*/  test_lib__http2__scheduler ; 
 int /*<<< orphan*/  test_lib__http3_frames ; 
 int /*<<< orphan*/  test_lib__http3_qpack ; 
 int /*<<< orphan*/  test_loop ; 
 int /*<<< orphan*/  test_loopback ; 
 int /*<<< orphan*/  test_percent_encode_zero_byte ; 
 int /*<<< orphan*/  test_src__ssl_c ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char **argv)
{
    FUNC4();

    { /* library tests */
        FUNC5("lib/common/balancer/least_conn.c", test_lib__common__balancer__least_conn_c);
        FUNC5("lib/common/balancer/roundrobin.c", test_lib__common__balancer__roundrobin_c);
        FUNC5("lib/cache.c", test_lib__common__cache_c);
        FUNC5("lib/common/multithread.c", test_lib__common__multithread_c);
        FUNC5("lib/common/hostinfo.c", test_lib__common__hostinfo_c);
        FUNC5("lib/common/httpclient.c", test_lib__common__httpclient_c);
        FUNC5("lib/common/serverutil.c", test_lib__common__serverutil_c);
        FUNC5("lib/common/serverutil.c", test_lib__common__socket_c);
        FUNC5("lib/common/string.c", test_lib__common__string_c);
        FUNC5("lib/common/url.c", test_lib__common__url_c);
        FUNC5("lib/common/time.c", test_lib__common__time_c);
        FUNC5("lib/common/timerwheel.c", test_lib__common__timerwheel_c);
        FUNC5("lib/core/headers.c", test_lib__core__headers_c);
        FUNC5("lib/core/proxy.c", test_lib__core__proxy_c);
        FUNC5("lib/core/util.c", test_lib__core__util_c);
        FUNC5("lib/handler/headers.c", test_lib__handler__headers_c);
        FUNC5("lib/handler/mimemap.c", test_lib__handler__mimemap_c);
        FUNC5("lib/http2/hpack.c", test_lib__http2__hpack);
        FUNC5("lib/http2/scheduler.c", test_lib__http2__scheduler);
        FUNC5("lib/http2/casper.c", test_lib__http2__casper);
        FUNC5("lib/http2/cache_digests.c", test_lib__http2__cache_digests);
        FUNC5("lib/http3/frame.c", test_lib__http3_frames);
        FUNC5("lib/http3/qpack.c", test_lib__http3_qpack);
    }

    { /* tests that use the run loop */
#if H2O_USE_LIBUV
        test_loop = h2o_mem_alloc(sizeof(*test_loop));
        uv_loop_init(test_loop);
#else
        test_loop = FUNC2();
#endif

        FUNC5("lib/t/test.c/loopback", test_loopback);
        FUNC5("lib/fastcgi.c", test_lib__handler__fastcgi_c);
        FUNC5("lib/file.c", test_lib__handler__file_c);
        FUNC5("lib/gzip.c", test_lib__handler__gzip_c);
        FUNC5("lib/redirect.c", test_lib__handler__redirect_c);
        FUNC5("issues/293.c", test_issues293);
        FUNC5("issues/percent-encode-zero-byte.c", test_percent_encode_zero_byte);

#if H2O_USE_LIBUV
        uv_loop_close(test_loop);
        free(test_loop);
#else
// h2o_evloop_destroy(loop);
#endif
    }

    { /* src tests */
        FUNC5("src/ssl.c", test_src__ssl_c);
    }

    return FUNC0();
}