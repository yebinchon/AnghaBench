
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_mimemap_t ;
typedef int buf ;


 int H2O_STRLIT (char*) ;
 int h2o_iovec_init (int ) ;
 int h2o_mem_release_shared (int *) ;
 int * h2o_mimemap_clone (int *) ;
 int * h2o_mimemap_create () ;
 int h2o_mimemap_define_mimetype (int *,char*,char*,int *) ;
 int * h2o_mimemap_get_default_type (int *) ;
 int * h2o_mimemap_get_type_by_extension (int *,int ) ;
 int * h2o_mimemap_get_type_by_mimetype (int *,int ,int ) ;
 int h2o_mimemap_remove_type (int *,char*) ;
 int h2o_mimemap_set_default_type (int *,char*,int *) ;
 int is_mimetype (int *,char*) ;
 int memset (char*,int ,int) ;
 int ok (int) ;
 int strcpy (char*,char*) ;
 int subtest (char*,int ) ;
 int test_default_attributes ;

__attribute__((used)) static void test_basic()
{
    h2o_mimemap_t *mimemap = h2o_mimemap_create(), *mimemap2;

    subtest("default-attributes", test_default_attributes);


    ok(is_mimetype(h2o_mimemap_get_default_type(mimemap), "application/octet-stream"));
    {
        char buf[sizeof("text/plain")];
        strcpy(buf, "text/plain");
        h2o_mimemap_set_default_type(mimemap, buf, ((void*)0));
        memset(buf, 0, sizeof(buf));
    }
    ok(is_mimetype(h2o_mimemap_get_default_type(mimemap), "text/plain"));


    h2o_mimemap_define_mimetype(mimemap, "foo", "example/foo", ((void*)0));
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))), "example/foo"));
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("FOO"))), "example/foo"));
    ok(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))) ==
       h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(H2O_STRLIT("example/foo")), 0));
    h2o_mimemap_define_mimetype(mimemap, "foo", "example/overwritten", ((void*)0));
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))), "example/overwritten"));
    ok(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))) ==
       h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(H2O_STRLIT("example/overwritten")), 0));
    ok(h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(H2O_STRLIT("example/foo")), 0) == ((void*)0));


    mimemap2 = h2o_mimemap_clone(mimemap);
    ok(is_mimetype(h2o_mimemap_get_default_type(mimemap2), "text/plain"));
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap2, h2o_iovec_init(H2O_STRLIT("foo"))), "example/overwritten"));
    ok(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))) ==
       h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(H2O_STRLIT("example/overwritten")), 0));
    h2o_mem_release_shared(mimemap2);


    ok(is_mimetype(h2o_mimemap_get_default_type(mimemap), "text/plain"));
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))), "example/overwritten"));


    h2o_mimemap_remove_type(mimemap, "foo");
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))), "text/plain"));
    ok(h2o_mimemap_get_type_by_mimetype(mimemap, h2o_iovec_init(H2O_STRLIT("example/overwritten")), 0) == ((void*)0));
    h2o_mimemap_remove_type(mimemap, "foo");
    ok(is_mimetype(h2o_mimemap_get_type_by_extension(mimemap, h2o_iovec_init(H2O_STRLIT("foo"))), "text/plain"));

    h2o_mem_release_shared(mimemap);
}
