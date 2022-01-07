
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phr_header {char const* name; size_t name_len; char const* value; size_t value_len; } ;


 int PARSE (char*,scalar_t__,int,char*) ;
 int bufis (char const*,size_t,char*) ;
 int ok (int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void test_response(void)
{
    int minor_version;
    int status;
    const char *msg;
    size_t msg_len;
    struct phr_header headers[4];
    size_t num_headers;
    do { note("simple"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 200 OK\r\n\r\n", strlen("HTTP/1.0 200 OK\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (0 == 0 ? strlen("HTTP/1.0 200 OK\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 0);
    ok(status == 200);
    ok(minor_version == 0);
    ok(bufis(msg, msg_len, "OK"));

    do { note("partial"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 200 OK\r\n\r", strlen("HTTP/1.0 200 OK\r\n\r"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.0 200 OK\r\n\r") : -2)); } while (0);

    do { note("parse headers"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r\nHost: example.com\r\nCookie: \r\n\r\n", strlen("HTTP/1.1 200 OK\r\nHost: example.com\r\nCookie: \r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (0 == 0 ? strlen("HTTP/1.1 200 OK\r\nHost: example.com\r\nCookie: \r\n\r\n") : 0)); } while (0);
    ok(num_headers == 2);
    ok(minor_version == 1);
    ok(status == 200);
    ok(bufis(msg, msg_len, "OK"));
    ok(bufis(headers[0].name, headers[0].name_len, "Host"));
    ok(bufis(headers[0].value, headers[0].value_len, "example.com"));
    ok(bufis(headers[1].name, headers[1].name_len, "Cookie"));
    ok(bufis(headers[1].value, headers[1].value_len, ""));

    do { note("parse multiline"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 200 OK\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n", strlen("HTTP/1.0 200 OK\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (0 == 0 ? strlen("HTTP/1.0 200 OK\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 3);
    ok(minor_version == 0);
    ok(status == 200);
    ok(bufis(msg, msg_len, "OK"));
    ok(bufis(headers[0].name, headers[0].name_len, "foo"));
    ok(bufis(headers[0].value, headers[0].value_len, ""));
    ok(bufis(headers[1].name, headers[1].name_len, "foo"));
    ok(bufis(headers[1].value, headers[1].value_len, "b"));
    ok(headers[2].name == ((void*)0));
    ok(bufis(headers[2].value, headers[2].value_len, "  \tc"));

    do { note("internal server error"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 500 Internal Server Error\r\n\r\n", strlen("HTTP/1.0 500 Internal Server Error\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (0 == 0 ? strlen("HTTP/1.0 500 Internal Server Error\r\n\r\n") : 0)); } while (0);
    ok(num_headers == 0);
    ok(minor_version == 0);
    ok(status == 500);
    ok(bufis(msg, msg_len, "Internal Server Error"));
    ok(msg_len == sizeof("Internal Server Error") - 1);

    do { note("incomplete 1"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("H", strlen("H"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("H") : -2)); } while (0);
    do { note("incomplete 2"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.", strlen("HTTP/1."), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.") : -2)); } while (0);
    do { note("incomplete 3"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1", strlen("HTTP/1.1"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1") : -2)); } while (0);
    ok(minor_version == -1);
    do { note("incomplete 4"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 ", strlen("HTTP/1.1 "), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 ") : -2)); } while (0);
    ok(minor_version == 1);
    do { note("incomplete 5"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 2", strlen("HTTP/1.1 2"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 2") : -2)); } while (0);
    do { note("incomplete 6"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200", strlen("HTTP/1.1 200"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200") : -2)); } while (0);
    ok(status == 0);
    do { note("incomplete 7"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 ", strlen("HTTP/1.1 200 "), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 ") : -2)); } while (0);
    ok(status == 200);
    do { note("incomplete 8"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 O", strlen("HTTP/1.1 200 O"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 O") : -2)); } while (0);
    do { note("incomplete 9"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r", strlen("HTTP/1.1 200 OK\r"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 OK\r") : -2)); } while (0);
    ok(msg == ((void*)0));
    do { note("incomplete 10"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r\n", strlen("HTTP/1.1 200 OK\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 OK\r\n") : -2)); } while (0);
    ok(bufis(msg, msg_len, "OK"));
    do { note("incomplete 11"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\n", strlen("HTTP/1.1 200 OK\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 OK\n") : -2)); } while (0);
    ok(bufis(msg, msg_len, "OK"));

    do { note("incomplete 11"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r\nA: 1\r", strlen("HTTP/1.1 200 OK\r\nA: 1\r"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 OK\r\nA: 1\r") : -2)); } while (0);
    ok(num_headers == 0);
    do { note("incomplete 12"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r\nA: 1\r\n", strlen("HTTP/1.1 200 OK\r\nA: 1\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-2 == 0 ? strlen("HTTP/1.1 200 OK\r\nA: 1\r\n") : -2)); } while (0);
    ok(num_headers == 1);
    ok(bufis(headers[0].name, headers[0].name_len, "A"));
    ok(bufis(headers[0].value, headers[0].value_len, "1"));

    do { note("slowloris (incomplete)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 200 OK\r\n\r", strlen("HTTP/1.0 200 OK\r\n\r"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, strlen("HTTP/1.0 200 OK\r\n\r") - 1) == (-2 == 0 ? strlen("HTTP/1.0 200 OK\r\n\r") : -2)); } while (0);
    do { note("slowloris (complete)"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.0 200 OK\r\n\r\n", strlen("HTTP/1.0 200 OK\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, strlen("HTTP/1.0 200 OK\r\n\r\n") - 1) == (0 == 0 ? strlen("HTTP/1.0 200 OK\r\n\r\n") : 0)); } while (0);

    do { note("invalid http version"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1. 200 OK\r\n\r\n", strlen("HTTP/1. 200 OK\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-1 == 0 ? strlen("HTTP/1. 200 OK\r\n\r\n") : -1)); } while (0);
    do { note("invalid http version 2"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.2z 200 OK\r\n\r\n", strlen("HTTP/1.2z 200 OK\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-1 == 0 ? strlen("HTTP/1.2z 200 OK\r\n\r\n") : -1)); } while (0);
    do { note("no status code"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1  OK\r\n\r\n", strlen("HTTP/1.1  OK\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (-1 == 0 ? strlen("HTTP/1.1  OK\r\n\r\n") : -1)); } while (0);

    do { note("exclude leading and trailing spaces in header value"); num_headers = sizeof(headers) / sizeof(headers[0]); ok(phr_parse_response("HTTP/1.1 200 OK\r\nbar: \t b\t \t\r\n\r\n", strlen("HTTP/1.1 200 OK\r\nbar: \t b\t \t\r\n\r\n"), &minor_version, &status, &msg, &msg_len, headers, &num_headers, 0) == (0 == 0 ? strlen("HTTP/1.1 200 OK\r\nbar: \t b\t \t\r\n\r\n") : 0)); } while (0);
    ok(bufis(headers[0].value, headers[0].value_len, "b"));


}
