
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_invalid_header_content (int,char*) ;

void
test_invalid_header_field_content_error (int req)
{
  test_invalid_header_content(req, "Foo: F\01ailure");
  test_invalid_header_content(req, "Foo: B\02ar");
}
