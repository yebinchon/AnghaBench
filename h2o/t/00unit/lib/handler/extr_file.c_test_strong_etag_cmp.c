
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H2O_STRLIT (char*) ;
 int h2o_filecache_compare_etag_strong (int ,int ) ;
 int ok (int) ;

__attribute__((used)) static void test_strong_etag_cmp()
{

    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("W/\"1\""), H2O_STRLIT("W/\"1\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("W/\"1\""), H2O_STRLIT("W/\"2\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("W/\"1\""), H2O_STRLIT("\"1\"")));
    ok(h2o_filecache_compare_etag_strong(H2O_STRLIT("\"1\""), H2O_STRLIT("\"1\"")));

    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("\"1"), H2O_STRLIT("\"1\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("\"1\""), H2O_STRLIT("\"1")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("\"1"), H2O_STRLIT("\"1")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("1\""), H2O_STRLIT("\"1\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("\"1\""), H2O_STRLIT("1\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT("1\""), H2O_STRLIT("1\"")));
    ok(!h2o_filecache_compare_etag_strong(H2O_STRLIT(""), H2O_STRLIT("")));
}
