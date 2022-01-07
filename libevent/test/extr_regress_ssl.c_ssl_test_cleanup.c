
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int dummy; } ;


 int EVP_PKEY_free (int ) ;
 int SSL_CTX_free (int *) ;
 int X509_free (int ) ;
 int basic_test_cleanup (struct testcase_t const*,void*) ;
 int * exit_base ;
 scalar_t__ got_close ;
 scalar_t__ got_error ;
 scalar_t__ got_timeout ;
 scalar_t__ n_connected ;
 scalar_t__ pending_connect_events ;
 int renegotiate_at ;
 scalar_t__ stop_when_connected ;
 scalar_t__ test_is_done ;
 int the_cert ;
 int the_key ;
 int * the_ssl_ctx ;

__attribute__((used)) static int
ssl_test_cleanup(const struct testcase_t *testcase, void *ptr)
{
 int ret = basic_test_cleanup(testcase, ptr);
 if (!ret) {
  return ret;
 }

 test_is_done = 0;
 n_connected = 0;
 got_close = 0;
 got_error = 0;
 got_timeout = 0;
 renegotiate_at = -1;
 stop_when_connected = 0;
 pending_connect_events = 0;
 exit_base = ((void*)0);

 X509_free(the_cert);
 EVP_PKEY_free(the_key);

 SSL_CTX_free(the_ssl_ctx);
 the_ssl_ctx = ((void*)0);

 return 1;
}
