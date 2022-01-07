
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_invalid_header_field (int,char*) ;

void
test_invalid_header_field_token_error (int req)
{
  test_invalid_header_field(req, "Fo@: Failure");
  test_invalid_header_field(req, "Foo\01\test: Bar");
}
