
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done_testing () ;
 int free (int ) ;
 int h2o_evloop_create () ;
 int h2o_mem_alloc (int) ;
 int init_openssl () ;
 int subtest (char*,int ) ;
 int test_issues293 ;
 int test_lib__common__balancer__least_conn_c ;
 int test_lib__common__balancer__roundrobin_c ;
 int test_lib__common__cache_c ;
 int test_lib__common__hostinfo_c ;
 int test_lib__common__httpclient_c ;
 int test_lib__common__multithread_c ;
 int test_lib__common__serverutil_c ;
 int test_lib__common__socket_c ;
 int test_lib__common__string_c ;
 int test_lib__common__time_c ;
 int test_lib__common__timerwheel_c ;
 int test_lib__common__url_c ;
 int test_lib__core__headers_c ;
 int test_lib__core__proxy_c ;
 int test_lib__core__util_c ;
 int test_lib__handler__fastcgi_c ;
 int test_lib__handler__file_c ;
 int test_lib__handler__gzip_c ;
 int test_lib__handler__headers_c ;
 int test_lib__handler__mimemap_c ;
 int test_lib__handler__redirect_c ;
 int test_lib__http2__cache_digests ;
 int test_lib__http2__casper ;
 int test_lib__http2__hpack ;
 int test_lib__http2__scheduler ;
 int test_lib__http3_frames ;
 int test_lib__http3_qpack ;
 int test_loop ;
 int test_loopback ;
 int test_percent_encode_zero_byte ;
 int test_src__ssl_c ;
 int uv_loop_close (int ) ;
 int uv_loop_init (int ) ;

int main(int argc, char **argv)
{
    init_openssl();

    {
        subtest("lib/common/balancer/least_conn.c", test_lib__common__balancer__least_conn_c);
        subtest("lib/common/balancer/roundrobin.c", test_lib__common__balancer__roundrobin_c);
        subtest("lib/cache.c", test_lib__common__cache_c);
        subtest("lib/common/multithread.c", test_lib__common__multithread_c);
        subtest("lib/common/hostinfo.c", test_lib__common__hostinfo_c);
        subtest("lib/common/httpclient.c", test_lib__common__httpclient_c);
        subtest("lib/common/serverutil.c", test_lib__common__serverutil_c);
        subtest("lib/common/serverutil.c", test_lib__common__socket_c);
        subtest("lib/common/string.c", test_lib__common__string_c);
        subtest("lib/common/url.c", test_lib__common__url_c);
        subtest("lib/common/time.c", test_lib__common__time_c);
        subtest("lib/common/timerwheel.c", test_lib__common__timerwheel_c);
        subtest("lib/core/headers.c", test_lib__core__headers_c);
        subtest("lib/core/proxy.c", test_lib__core__proxy_c);
        subtest("lib/core/util.c", test_lib__core__util_c);
        subtest("lib/handler/headers.c", test_lib__handler__headers_c);
        subtest("lib/handler/mimemap.c", test_lib__handler__mimemap_c);
        subtest("lib/http2/hpack.c", test_lib__http2__hpack);
        subtest("lib/http2/scheduler.c", test_lib__http2__scheduler);
        subtest("lib/http2/casper.c", test_lib__http2__casper);
        subtest("lib/http2/cache_digests.c", test_lib__http2__cache_digests);
        subtest("lib/http3/frame.c", test_lib__http3_frames);
        subtest("lib/http3/qpack.c", test_lib__http3_qpack);
    }

    {




        test_loop = h2o_evloop_create();


        subtest("lib/t/test.c/loopback", test_loopback);
        subtest("lib/fastcgi.c", test_lib__handler__fastcgi_c);
        subtest("lib/file.c", test_lib__handler__file_c);
        subtest("lib/gzip.c", test_lib__handler__gzip_c);
        subtest("lib/redirect.c", test_lib__handler__redirect_c);
        subtest("issues/293.c", test_issues293);
        subtest("issues/percent-encode-zero-byte.c", test_percent_encode_zero_byte);







    }

    {
        subtest("src/ssl.c", test_src__ssl_c);
    }

    return done_testing();
}
