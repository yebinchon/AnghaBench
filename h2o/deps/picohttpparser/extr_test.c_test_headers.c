
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {int value_len; int value; int name_len; int name; } ;


 int PARSE (char*,int,int,char*) ;
 int bufis (int ,int ,char*) ;
 int ok (int) ;

__attribute__((used)) static void test_headers(void)
{


    struct phr_header headers[4];
    size_t num_headers;
    do { note("simple"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_headers("Host: example.com\r\nCookie: \r\n\r\n", strlen("Host: example.com\r\nCookie: \r\n\r\n"), headers, &num_headers, 0) == (0 == 0 ? strlen("Host: example.com\r\nCookie: \r\n\r\n") : 0)); } while (0);
    ok(num_headers == 2);
    ok(bufis(headers[0].name, headers[0].name_len, "Host"));
    ok(bufis(headers[0].value, headers[0].value_len, "example.com"));
    ok(bufis(headers[1].name, headers[1].name_len, "Cookie"));
    ok(bufis(headers[1].value, headers[1].value_len, ""));

    do { note("slowloris"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_headers("Host: example.com\r\nCookie: \r\n\r\n", strlen("Host: example.com\r\nCookie: \r\n\r\n"), headers, &num_headers, 1) == (0 == 0 ? strlen("Host: example.com\r\nCookie: \r\n\r\n") : 0)); } while (0);
    ok(num_headers == 2);
    ok(bufis(headers[0].name, headers[0].name_len, "Host"));
    ok(bufis(headers[0].value, headers[0].value_len, "example.com"));
    ok(bufis(headers[1].name, headers[1].name_len, "Cookie"));
    ok(bufis(headers[1].value, headers[1].value_len, ""));

    do { note("partial"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_headers("Host: example.com\r\nCookie: \r\n\r", strlen("Host: example.com\r\nCookie: \r\n\r"), headers, &num_headers, 0) == (-2 == 0 ? strlen("Host: example.com\r\nCookie: \r\n\r") : -2)); } while (0);

    do { note("error"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_headers("Host: e\7fample.com\r\nCookie: \r\n\r", strlen("Host: e\7fample.com\r\nCookie: \r\n\r"), headers, &num_headers, 0) == (-1 == 0 ? strlen("Host: e\7fample.com\r\nCookie: \r\n\r") : -1)); } while (0);


}
