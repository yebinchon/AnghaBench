
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int done_testing () ;
 int subtest (char*,int ) ;
 int test_chunked ;
 int test_chunked_consume_trailer ;
 int test_headers ;
 int test_request ;
 int test_response ;

int main(int argc, char **argv)
{
    subtest("request", test_request);
    subtest("response", test_response);
    subtest("headers", test_headers);
    subtest("chunked", test_chunked);
    subtest("chunked-consume-trailer", test_chunked_consume_trailer);
    return done_testing();
}
