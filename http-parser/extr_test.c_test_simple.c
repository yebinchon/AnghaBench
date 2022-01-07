
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum http_errno { ____Placeholder_http_errno } http_errno ;


 int HTTP_REQUEST ;
 int test_simple_type (char const*,int,int ) ;

void
test_simple (const char *buf, enum http_errno err_expected)
{
  test_simple_type(buf, err_expected, HTTP_REQUEST);
}
