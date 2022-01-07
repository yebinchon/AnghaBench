
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int http_parser ;


 scalar_t__ HPE_INVALID_CONTENT_LENGTH ;
 scalar_t__ HPE_OK ;
 scalar_t__ HTTP_PARSER_ERRNO (int *) ;
 int HTTP_RESPONSE ;
 int assert (int) ;
 int http_parser_execute (int *,int *,char const*,size_t) ;
 int http_parser_init (int *,int ) ;
 int settings_null ;

__attribute__((used)) static void
test_content_length_overflow (const char *buf, size_t buflen, int expect_ok)
{
  http_parser parser;
  http_parser_init(&parser, HTTP_RESPONSE);
  http_parser_execute(&parser, &settings_null, buf, buflen);

  if (expect_ok)
    assert(HTTP_PARSER_ERRNO(&parser) == HPE_OK);
  else
    assert(HTTP_PARSER_ERRNO(&parser) == HPE_INVALID_CONTENT_LENGTH);
}
