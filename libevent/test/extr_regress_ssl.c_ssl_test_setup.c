
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct testcase_t {int dummy; } ;


 int EVUTIL_ASSERT (int ) ;
 void* basic_test_setup (struct testcase_t const*) ;
 scalar_t__ disable_tls_11_and_12 ;
 int init_ssl () ;
 int ssl_getcert (int ) ;
 int ssl_getkey () ;
 int the_cert ;
 int the_key ;

__attribute__((used)) static void *
ssl_test_setup(const struct testcase_t *testcase)
{
 init_ssl();

 the_key = ssl_getkey();
 EVUTIL_ASSERT(the_key);

 the_cert = ssl_getcert(the_key);
 EVUTIL_ASSERT(the_cert);

 disable_tls_11_and_12 = 0;

 return basic_test_setup(testcase);
}
