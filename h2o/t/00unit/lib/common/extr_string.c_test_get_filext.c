
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * base; int len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 int H2O_STRLIT (char*) ;
 TYPE_1__ h2o_get_filext (int ) ;
 int h2o_memis (int *,int ,int ) ;
 int ok (int ) ;

__attribute__((used)) static void test_get_filext(void)
{
    h2o_iovec_t ext;

    ext = h2o_get_filext(H2O_STRLIT("/abc.txt"));
    ok(h2o_memis(ext.base, ext.len, H2O_STRLIT("txt")));
    ext = h2o_get_filext(H2O_STRLIT("/abc.txt.gz"));
    ok(h2o_memis(ext.base, ext.len, H2O_STRLIT("gz")));
    ext = h2o_get_filext(H2O_STRLIT("/abc."));
    ok(h2o_memis(ext.base, ext.len, H2O_STRLIT("")));
    ext = h2o_get_filext(H2O_STRLIT("/abc"));
    ok(ext.base == ((void*)0));
    ext = h2o_get_filext(H2O_STRLIT("/abc.def/abc"));
    ok(ext.base == ((void*)0));
    ext = h2o_get_filext(H2O_STRLIT("/abc.def/"));
    ok(ext.base == ((void*)0));
}
