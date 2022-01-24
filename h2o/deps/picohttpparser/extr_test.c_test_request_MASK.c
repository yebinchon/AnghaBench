#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct phr_header {char const* name; size_t name_len; char const* value; size_t value_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int,char*) ; 
 int FUNC1 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    const char *method;
    size_t method_len;
    const char *path;
    size_t path_len;
    int minor_version;
    struct phr_header headers[4];
    size_t num_headers;

#define PARSE(s, last_len, exp, comment)                                                                                           \
    do {                                                                                                                           \
        note(comment);                                                                                                             \
        num_headers = sizeof(headers) / sizeof(headers[0]);                                                                        \
        ok(phr_parse_request(s, sizeof(s) - 1, &method, &method_len, &path, &path_len, &minor_version, headers, &num_headers,      \
                             last_len) == (exp == 0 ? strlen(s) : exp));                                                           \
    } while (0)

    PARSE("GET / HTTP/1.0\r\n\r\n", 0, 0, "simple");
    FUNC2(num_headers == 0);
    FUNC2(FUNC1(method, method_len, "GET"));
    FUNC2(FUNC1(path, path_len, "/"));
    FUNC2(minor_version == 0);

    PARSE("GET / HTTP/1.0\r\n\r", 0, -2, "partial");

    PARSE("GET /hoge HTTP/1.1\r\nHost: example.com\r\nCookie: \r\n\r\n", 0, 0, "parse headers");
    FUNC2(num_headers == 2);
    FUNC2(FUNC1(method, method_len, "GET"));
    FUNC2(FUNC1(path, path_len, "/hoge"));
    FUNC2(minor_version == 1);
    FUNC2(FUNC1(headers[0].name, headers[0].name_len, "Host"));
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, "example.com"));
    FUNC2(FUNC1(headers[1].name, headers[1].name_len, "Cookie"));
    FUNC2(FUNC1(headers[1].value, headers[1].value_len, ""));

    PARSE("GET /hoge HTTP/1.1\r\nHost: example.com\r\nUser-Agent: \343\201\262\343/1.0\r\n\r\n", 0, 0, "multibyte included");
    FUNC2(num_headers == 2);
    FUNC2(FUNC1(method, method_len, "GET"));
    FUNC2(FUNC1(path, path_len, "/hoge"));
    FUNC2(minor_version == 1);
    FUNC2(FUNC1(headers[0].name, headers[0].name_len, "Host"));
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, "example.com"));
    FUNC2(FUNC1(headers[1].name, headers[1].name_len, "User-Agent"));
    FUNC2(FUNC1(headers[1].value, headers[1].value_len, "\343\201\262\343/1.0"));

    PARSE("GET / HTTP/1.0\r\nfoo: \r\nfoo: b\r\n  \tc\r\n\r\n", 0, 0, "parse multiline");
    FUNC2(num_headers == 3);
    FUNC2(FUNC1(method, method_len, "GET"));
    FUNC2(FUNC1(path, path_len, "/"));
    FUNC2(minor_version == 0);
    FUNC2(FUNC1(headers[0].name, headers[0].name_len, "foo"));
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, ""));
    FUNC2(FUNC1(headers[1].name, headers[1].name_len, "foo"));
    FUNC2(FUNC1(headers[1].value, headers[1].value_len, "b"));
    FUNC2(headers[2].name == NULL);
    FUNC2(FUNC1(headers[2].value, headers[2].value_len, "  \tc"));

    PARSE("GET / HTTP/1.0\r\nfoo : ab\r\n\r\n", 0, -1, "parse header name with trailing space");

    PARSE("GET", 0, -2, "incomplete 1");
    FUNC2(method == NULL);
    PARSE("GET ", 0, -2, "incomplete 2");
    FUNC2(FUNC1(method, method_len, "GET"));
    PARSE("GET /", 0, -2, "incomplete 3");
    FUNC2(path == NULL);
    PARSE("GET / ", 0, -2, "incomplete 4");
    FUNC2(FUNC1(path, path_len, "/"));
    PARSE("GET / H", 0, -2, "incomplete 5");
    PARSE("GET / HTTP/1.", 0, -2, "incomplete 6");
    PARSE("GET / HTTP/1.0", 0, -2, "incomplete 7");
    FUNC2(minor_version == -1);
    PARSE("GET / HTTP/1.0\r", 0, -2, "incomplete 8");
    FUNC2(minor_version == 0);

    PARSE("GET /hoge HTTP/1.0\r\n\r", FUNC3("GET /hoge HTTP/1.0\r\n\r") - 1, -2, "slowloris (incomplete)");
    PARSE("GET /hoge HTTP/1.0\r\n\r\n", FUNC3("GET /hoge HTTP/1.0\r\n\r\n") - 1, 0, "slowloris (complete)");

    PARSE(" / HTTP/1.0\r\n\r\n", 0, -1, "empty method");
    PARSE("GET  HTTP/1.0\r\n\r\n", 0, -1, "empty request-target");

    PARSE("GET / HTTP/1.0\r\n:a\r\n\r\n", 0, -1, "empty header name");
    PARSE("GET / HTTP/1.0\r\n :a\r\n\r\n", 0, -1, "header name (space only)");

    PARSE("G\0T / HTTP/1.0\r\n\r\n", 0, -1, "NUL in method");
    PARSE("G\tT / HTTP/1.0\r\n\r\n", 0, -1, "tab in method");
    PARSE("GET /\x7fhello HTTP/1.0\r\n\r\n", 0, -1, "DEL in uri-path");
    PARSE("GET / HTTP/1.0\r\na\0b: c\r\n\r\n", 0, -1, "NUL in header name");
    PARSE("GET / HTTP/1.0\r\nab: c\0d\r\n\r\n", 0, -1, "NUL in header value");
    PARSE("GET / HTTP/1.0\r\na\033b: c\r\n\r\n", 0, -1, "CTL in header name");
    PARSE("GET / HTTP/1.0\r\nab: c\033\r\n\r\n", 0, -1, "CTL in header value");
    PARSE("GET / HTTP/1.0\r\n/: 1\r\n\r\n", 0, -1, "invalid char in header value");
    PARSE("GET /\xa0 HTTP/1.0\r\nh: c\xa2y\r\n\r\n", 0, 0, "accept MSB chars");
    FUNC2(num_headers == 1);
    FUNC2(FUNC1(method, method_len, "GET"));
    FUNC2(FUNC1(path, path_len, "/\xa0"));
    FUNC2(minor_version == 0);
    FUNC2(FUNC1(headers[0].name, headers[0].name_len, "h"));
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, "c\xa2y"));

    PARSE("GET / HTTP/1.0\r\n\x7c\x7e: 1\r\n\r\n", 0, 0, "accept |~ (though forbidden by SSE)");
    FUNC2(num_headers == 1);
    FUNC2(FUNC1(headers[0].name, headers[0].name_len, "\x7c\x7e"));
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, "1"));

    PARSE("GET / HTTP/1.0\r\n\x7b: 1\r\n\r\n", 0, -1, "disallow {");

    PARSE("GET / HTTP/1.0\r\nfoo: a \t \r\n\r\n", 0, 0, "exclude leading and trailing spaces in header value");
    FUNC2(FUNC1(headers[0].value, headers[0].value_len, "a"));

#undef PARSE
}