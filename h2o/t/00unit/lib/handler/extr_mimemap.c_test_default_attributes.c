
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_compressible; scalar_t__ priority; } ;
typedef TYPE_1__ h2o_mime_attributes_t ;


 scalar_t__ H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST ;
 scalar_t__ H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL ;
 int h2o_mimemap_get_default_attributes (char*,TYPE_1__*) ;
 int ok (int) ;

__attribute__((used)) static void test_default_attributes(void)
{
    h2o_mime_attributes_t attr;

    h2o_mimemap_get_default_attributes("text/plain", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    h2o_mimemap_get_default_attributes("text/plain; charset=utf-8", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    h2o_mimemap_get_default_attributes("application/xhtml+xml", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    h2o_mimemap_get_default_attributes("application/xhtml+xml; charset=utf-8", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);

    h2o_mimemap_get_default_attributes("text/css", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST);

    h2o_mimemap_get_default_attributes("text/css; charset=utf-8", &attr);
    ok(attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_HIGHEST);

    h2o_mimemap_get_default_attributes("application/octet-stream", &attr);
    ok(!attr.is_compressible);
    ok(attr.priority == H2O_MIME_ATTRIBUTE_PRIORITY_NORMAL);
}
