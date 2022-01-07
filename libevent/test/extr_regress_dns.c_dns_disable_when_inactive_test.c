
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVDNS_BASE_DISABLE_WHEN_INACTIVE ;
 int dns_inflight_test_impl (void*,int ) ;

__attribute__((used)) static void
dns_disable_when_inactive_test(void *arg)
{
 dns_inflight_test_impl(arg, EVDNS_BASE_DISABLE_WHEN_INACTIVE);
}
