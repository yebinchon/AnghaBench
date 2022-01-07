
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {char const* name; size_t name_len; char const* value; size_t value_len; } ;


 int PARSE (char*,scalar_t__,int,char*) ;
 int bufis (char const*,size_t,char*) ;
 int ok (int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void test_request(void)
{
    const char *method;
    size_t method_len;
    const char *path;
    size_t path_len;
    int minor_version;
    struct phr_header headers[4];
    size_t num_headers;
    do { note("simple"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n\r\n", sizeof("GET / HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET / HTTP/1.0\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 0);
    ok(bufis(method, method_len, "GET"));
    ok(bufis(path, path_len, "/"));
    ok(minor_version == 0);

    do { note("partial"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n\r", sizeof("GET / HTTP/1.0\r\n\r") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / HTTP/1.0\r\n\r") : -2)); } while (0);

    do { note("parse headers"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /hoge HTTP/1.1\r\nHost: example.com\r\nCookie: \r\n\r\n", sizeof("GET /hoge HTTP/1.1\r\nHost: example.com\r\nCookie: \r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET /hoge HTTP/1.1\r\nHost: example.com\r\nCookie: \r\n\r\n") : 0)); } while (0);
    ok(num_headers == 2);
    ok(bufis(method, method_len, "GET"));
    ok(bufis(path, path_len, "/hoge"));
    ok(minor_version == 1);
    ok(bufis(headers[0].name, headers[0].name_len, "Host"));
    ok(bufis(headers[0].value, headers[0].value_len, "example.com"));
    ok(bufis(headers[1].name, headers[1].name_len, "Cookie"));
    ok(bufis(headers[1].value, headers[1].value_len, ""));

    do { note("multibyte included"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /hoge HTTP/1.1\r\nHost: example.com\r\nUser-Agent: \343\201\262\343/1.0\r\n\r\n", sizeof("GET /hoge HTTP/1.1\r\nHost: example.com\r\nUser-Agent: \343\201\262\343/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET /hoge HTTP/1.1\r\nHost: example.com\r\nUser-Agent: \343\201\262\343/1.0\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 2);
    ok(bufis(method, method_len, "GET"));
    ok(bufis(path, path_len, "/hoge"));
    ok(minor_version == 1);
    ok(bufis(headers[0].name, headers[0].name_len, "Host"));
    ok(bufis(headers[0].value, headers[0].value_len, "example.com"));
    ok(bufis(headers[1].name, headers[1].name_len, "User-Agent"));
    ok(bufis(headers[1].value, headers[1].value_len, "\343\201\262\343/1.0"));

    do { note("parse multiline"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n", sizeof("GET / HTTP/1.0\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET / HTTP/1.0\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 3);
    ok(bufis(method, method_len, "GET"));
    ok(bufis(path, path_len, "/"));
    ok(minor_version == 0);
    ok(bufis(headers[0].name, headers[0].name_len, "foo"));
    ok(bufis(headers[0].value, headers[0].value_len, ""));
    ok(bufis(headers[1].name, headers[1].name_len, "foo"));
    ok(bufis(headers[1].value, headers[1].value_len, "b"));
    ok(headers[2].name == ((void*)0));
    ok(bufis(headers[2].value, headers[2].value_len, "  \tc"));

    do { note("parse header name with trailing space"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\nfoo : ab\r\n\r\n", sizeof("GET / HTTP/1.0\r\nfoo : ab\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\nfoo : ab\r\n\r\n") : -1)); } while (0);

    do { note("incomplete 1"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET", sizeof("GET") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET") : -2)); } while (0);
    ok(method == ((void*)0));
    do { note("incomplete 2"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET ", sizeof("GET ") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET ") : -2)); } while (0);
    ok(bufis(method, method_len, "GET"));
    do { note("incomplete 3"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /", sizeof("GET /") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET /") : -2)); } while (0);
    ok(path == ((void*)0));
    do { note("incomplete 4"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / ", sizeof("GET / ") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / ") : -2)); } while (0);
    ok(bufis(path, path_len, "/"));
    do { note("incomplete 5"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / H", sizeof("GET / H") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / H") : -2)); } while (0);
    do { note("incomplete 6"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.", sizeof("GET / HTTP/1.") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / HTTP/1.") : -2)); } while (0);
    do { note("incomplete 7"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0", sizeof("GET / HTTP/1.0") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / HTTP/1.0") : -2)); } while (0);
    ok(minor_version == -1);
    do { note("incomplete 8"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r", sizeof("GET / HTTP/1.0\r") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-2 == 0 ? strlen("GET / HTTP/1.0\r") : -2)); } while (0);
    ok(minor_version == 0);

    do { note("slowloris (incomplete)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /hoge HTTP/1.0\r\n\r", sizeof("GET /hoge HTTP/1.0\r\n\r") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, strlen("GET /hoge HTTP/1.0\r\n\r") - 1) == (-2 == 0 ? strlen("GET /hoge HTTP/1.0\r\n\r") : -2)); } while (0);
    do { note("slowloris (complete)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /hoge HTTP/1.0\r\n\r\n", sizeof("GET /hoge HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, strlen("GET /hoge HTTP/1.0\r\n\r\n") - 1) == (0 == 0 ? strlen("GET /hoge HTTP/1.0\r\n\r\n") : 0)); } while (0);

    do { note("empty method"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request(" / HTTP/1.0\r\n\r\n", sizeof(" / HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen(" / HTTP/1.0\r\n\r\n") : -1)); } while (0);
    do { note("empty request-target"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET  HTTP/1.0\r\n\r\n", sizeof("GET  HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET  HTTP/1.0\r\n\r\n") : -1)); } while (0);

    do { note("empty header name"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n:a\r\n\r\n", sizeof("GET / HTTP/1.0\r\n:a\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\n:a\r\n\r\n") : -1)); } while (0);
    do { note("header name (space only)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n :a\r\n\r\n", sizeof("GET / HTTP/1.0\r\n :a\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\n :a\r\n\r\n") : -1)); } while (0);

    do { note("NUL in method"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("G\0T / HTTP/1.0\r\n\r\n", sizeof("G\0T / HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("G\0T / HTTP/1.0\r\n\r\n") : -1)); } while (0);
    do { note("tab in method"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("G\tT / HTTP/1.0\r\n\r\n", sizeof("G\tT / HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("G\tT / HTTP/1.0\r\n\r\n") : -1)); } while (0);
    do { note("DEL in uri-path"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /\x7fhello HTTP/1.0\r\n\r\n", sizeof("GET /\x7fhello HTTP/1.0\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET /\x7fhello HTTP/1.0\r\n\r\n") : -1)); } while (0);
    do { note("NUL in header name"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\na\0b: c\r\n\r\n", sizeof("GET / HTTP/1.0\r\na\0b: c\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\na\0b: c\r\n\r\n") : -1)); } while (0);
    do { note("NUL in header value"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\nab: c\0d\r\n\r\n", sizeof("GET / HTTP/1.0\r\nab: c\0d\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\nab: c\0d\r\n\r\n") : -1)); } while (0);
    do { note("CTL in header name"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\na\033b: c\r\n\r\n", sizeof("GET / HTTP/1.0\r\na\033b: c\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\na\033b: c\r\n\r\n") : -1)); } while (0);
    do { note("CTL in header value"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\nab: c\033\r\n\r\n", sizeof("GET / HTTP/1.0\r\nab: c\033\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\nab: c\033\r\n\r\n") : -1)); } while (0);
    do { note("invalid char in header value"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n/: 1\r\n\r\n", sizeof("GET / HTTP/1.0\r\n/: 1\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\n/: 1\r\n\r\n") : -1)); } while (0);
    do { note("accept MSB chars"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET /\xa0 HTTP/1.0\r\nh: c\xa2y\r\n\r\n", sizeof("GET /\xa0 HTTP/1.0\r\nh: c\xa2y\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET /\xa0 HTTP/1.0\r\nh: c\xa2y\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 1);
    ok(bufis(method, method_len, "GET"));
    ok(bufis(path, path_len, "/\xa0"));
    ok(minor_version == 0);
    ok(bufis(headers[0].name, headers[0].name_len, "h"));
    ok(bufis(headers[0].value, headers[0].value_len, "c\xa2y"));

    do { note("accept |~ (though forbidden by SSE)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n\x7c\x7e: 1\r\n\r\n", sizeof("GET / HTTP/1.0\r\n\x7c\x7e: 1\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET / HTTP/1.0\r\n\x7c\x7e: 1\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 1);
    ok(bufis(headers[0].name, headers[0].name_len, "\x7c\x7e"));
    ok(bufis(headers[0].value, headers[0].value_len, "1"));

    do { note("disallow {"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\n\x7b: 1\r\n\r\n", sizeof("GET / HTTP/1.0\r\n\x7b: 1\r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (-1 == 0 ? strlen("GET / HTTP/1.0\r\n\x7b: 1\r\n\r\n") : -1)); } while (0);

    do { note("exclude leading and trailing spaces in header value"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_request("GET / HTTP/1.0\r\nfoo: a \t \r\n\r\n", sizeof("GET / HTTP/1.0\r\nfoo: a \t \r\n\r\n") - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers, 0) == (0 == 0 ? strlen("GET / HTTP/1.0\r\nfoo: a \t \r\n\r\n") : 0)); } while (0);
    ok(bufis(headers[0].value, headers[0].value_len, "a"));


}
