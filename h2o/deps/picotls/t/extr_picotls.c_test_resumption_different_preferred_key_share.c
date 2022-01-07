
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ctx ;
 scalar_t__ ctx_peer ;
 int test_resumption_impl (int,int ) ;

__attribute__((used)) static void test_resumption_different_preferred_key_share(void)
{
    if (ctx == ctx_peer)
        return;
    test_resumption_impl(1, 0);
}
