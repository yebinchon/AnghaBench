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
struct message {char* name; char* raw; int http_major; int status_code; char* response_status; int num_headers; int body_size; int num_chunks_complete; int* chunk_lengths; int /*<<< orphan*/  should_keep_alive; int /*<<< orphan*/  headers; int /*<<< orphan*/  http_minor; int /*<<< orphan*/  message_complete_on_eof; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  http_parser ;

/* Variables and functions */
 unsigned int FUNC0 (struct message*) ; 
 size_t BONJOUR_MADAME_FR ; 
 size_t CHUNKED_W_NONSENSE_AFTER_LENGTH ; 
 size_t CHUNKED_W_TRAILING_HEADERS ; 
 size_t CONNECT_REQUEST ; 
 int /*<<< orphan*/  FALSE ; 
 size_t GET_FUNKY_CONTENT_LENGTH ; 
 size_t GET_NO_HEADERS_NO_BODY ; 
 size_t GET_ONE_HEADER_NO_BODY ; 
 int /*<<< orphan*/  HPE_INVALID_CONSTANT ; 
 int /*<<< orphan*/  HPE_INVALID_CONTENT_LENGTH ; 
 int /*<<< orphan*/  HPE_INVALID_HEADER_TOKEN ; 
 int /*<<< orphan*/  HPE_INVALID_METHOD ; 
 int /*<<< orphan*/  HPE_INVALID_VERSION ; 
 int /*<<< orphan*/  HPE_OK ; 
 int /*<<< orphan*/  HTTP_REQUEST ; 
 int /*<<< orphan*/  HTTP_RESPONSE ; 
 unsigned int MAX_CHUNKS ; 
 size_t NO_BODY_HTTP10_KA_204 ; 
 size_t NO_CARRIAGE_RET ; 
 size_t NO_HEADERS_NO_BODY_404 ; 
 size_t NO_REASON_PHRASE ; 
 size_t POST_CHUNKED_ALL_YOUR_BASE ; 
 size_t POST_IDENTITY_BODY_WORLD ; 
 size_t PREFIX_NEWLINE_GET ; 
 size_t QUERY_URL_WITH_QUESTION_MARK_GET ; 
 size_t TRAILING_SPACE_ON_CHUNKED_BODY ; 
 size_t TWO_CHUNKS_MULT_ZERO_END ; 
 size_t UNDERSTORE_HEADER_KEY ; 
 char* FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 unsigned long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct message* requests ; 
 struct message* responses ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct message*) ; 
 int /*<<< orphan*/  FUNC17 (struct message*) ; 
 int /*<<< orphan*/  FUNC18 (struct message*) ; 
 int /*<<< orphan*/  FUNC19 (struct message*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct message*,struct message*,struct message*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (struct message*,struct message*,struct message*) ; 
 int /*<<< orphan*/  FUNC27 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 () ; 

int
FUNC30 (void)
{
  unsigned i, j, k;
  unsigned long version;
  unsigned major;
  unsigned minor;
  unsigned patch;

  version = FUNC3();
  major = (version >> 16) & 255;
  minor = (version >> 8) & 255;
  patch = version & 255;
  FUNC4("http_parser v%u.%u.%u (0x%06lx)\n", major, minor, patch, version);

  FUNC4("sizeof(http_parser) = %u\n", (unsigned int)sizeof(http_parser));

  //// API
  FUNC25();
  FUNC24();
  FUNC20();
  FUNC29();

  //// NREAD
  FUNC12();

  //// OVERFLOW CONDITIONS
  FUNC23();

  FUNC13(HTTP_REQUEST);
  FUNC22(HTTP_REQUEST, 1000);
  FUNC22(HTTP_REQUEST, 100000);

  FUNC13(HTTP_RESPONSE);
  FUNC22(HTTP_RESPONSE, 1000);
  FUNC22(HTTP_RESPONSE, 100000);

  FUNC10();
  FUNC7();

  //// HEADER FIELD CONDITIONS
  FUNC9(HTTP_REQUEST);
  FUNC8(HTTP_REQUEST);
  FUNC11(HTTP_REQUEST);
  FUNC15(HTTP_REQUEST);
  FUNC14(HTTP_REQUEST);
  FUNC9(HTTP_RESPONSE);
  FUNC8(HTTP_RESPONSE);
  FUNC11(HTTP_RESPONSE);
  FUNC15(HTTP_RESPONSE);
  FUNC14(HTTP_RESPONSE);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length:\r\n"  // empty
      "\r\n",
      HPE_INVALID_CONTENT_LENGTH,
      HTTP_REQUEST);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length:  42 \r\n"  // Note the surrounding whitespace.
      "\r\n",
      HPE_OK,
      HTTP_REQUEST);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length: 4 2\r\n"
      "\r\n",
      HPE_INVALID_CONTENT_LENGTH,
      HTTP_REQUEST);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length: 13 37\r\n"
      "\r\n",
      HPE_INVALID_CONTENT_LENGTH,
      HTTP_REQUEST);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length:  42\r\n"
      " Hello world!\r\n",
      HPE_INVALID_CONTENT_LENGTH,
      HTTP_REQUEST);

  FUNC28(
      "POST / HTTP/1.1\r\n"
      "Content-Length:  42\r\n"
      " \r\n",
      HPE_OK,
      HTTP_REQUEST);

  //// RESPONSES

  FUNC28("HTP/1.1 200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);
  FUNC28("HTTP/01.1 200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);
  FUNC28("HTTP/11.1 200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);
  FUNC28("HTTP/1.01 200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);
  FUNC28("HTTP/1.1\t200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);
  FUNC28("\rHTTP/1.1\t200 OK\r\n\r\n", HPE_INVALID_VERSION, HTTP_RESPONSE);

  for (i = 0; i < FUNC0(responses); i++) {
    FUNC16(&responses[i]);
  }

  for (i = 0; i < FUNC0(responses); i++) {
    FUNC19(&responses[i]);
  }

  for (i = 0; i < FUNC0(responses); i++) {
    FUNC17(&responses[i]);
  }

  for (i = 0; i < FUNC0(responses); i++) {
    if (!responses[i].should_keep_alive) continue;
    for (j = 0; j < FUNC0(responses); j++) {
      if (!responses[j].should_keep_alive) continue;
      for (k = 0; k < FUNC0(responses); k++) {
        FUNC21(&responses[i], &responses[j], &responses[k]);
      }
    }
  }

  FUNC18(&responses[NO_HEADERS_NO_BODY_404]);
  FUNC18(&responses[TRAILING_SPACE_ON_CHUNKED_BODY]);

  // test very large chunked response
  {
    char * msg = FUNC1(31337,
      "HTTP/1.0 200 OK\r\n"
      "Transfer-Encoding: chunked\r\n"
      "Content-Type: text/plain\r\n"
      "\r\n");
    struct message large_chunked =
      {.name= "large chunked"
      ,.type= HTTP_RESPONSE
      ,.raw= msg
      ,.should_keep_alive= FALSE
      ,.message_complete_on_eof= FALSE
      ,.http_major= 1
      ,.http_minor= 0
      ,.status_code= 200
      ,.response_status= "OK"
      ,.num_headers= 2
      ,.headers=
        { { "Transfer-Encoding", "chunked" }
        , { "Content-Type", "text/plain" }
        }
      ,.body_size= 31337*1024
      ,.num_chunks_complete= 31338
      };
    for (i = 0; i < MAX_CHUNKS; i++) {
      large_chunked.chunk_lengths[i] = 1024;
    }
    FUNC18(&large_chunked);
    FUNC2(msg);
  }



  FUNC4("response scan 1/2      ");
  FUNC26( &responses[TRAILING_SPACE_ON_CHUNKED_BODY]
           , &responses[NO_BODY_HTTP10_KA_204]
           , &responses[NO_REASON_PHRASE]
           );

  FUNC4("response scan 2/2      ");
  FUNC26( &responses[BONJOUR_MADAME_FR]
           , &responses[UNDERSTORE_HEADER_KEY]
           , &responses[NO_CARRIAGE_RET]
           );

  FUNC5("responses okay");


  /// REQUESTS

  FUNC27("GET / IHTTP/1.0\r\n\r\n", HPE_INVALID_CONSTANT);
  FUNC27("GET / ICE/1.0\r\n\r\n", HPE_INVALID_CONSTANT);
  FUNC27("GET / HTP/1.1\r\n\r\n", HPE_INVALID_VERSION);
  FUNC27("GET / HTTP/01.1\r\n\r\n", HPE_INVALID_VERSION);
  FUNC27("GET / HTTP/11.1\r\n\r\n", HPE_INVALID_VERSION);
  FUNC27("GET / HTTP/1.01\r\n\r\n", HPE_INVALID_VERSION);

  FUNC27("GET / HTTP/1.0\r\nHello: w\1rld\r\n\r\n", HPE_INVALID_HEADER_TOKEN);
  FUNC27("GET / HTTP/1.0\r\nHello: woooo\2rld\r\n\r\n", HPE_INVALID_HEADER_TOKEN);

  // Extended characters - see nodejs/test/parallel/test-http-headers-obstext.js
  FUNC27("GET / HTTP/1.1\r\n"
              "Test: Düsseldorf\r\n",
              HPE_OK);

  // Well-formed but incomplete
  FUNC27("GET / HTTP/1.1\r\n"
              "Content-Type: text/plain\r\n"
              "Content-Length: 6\r\n"
              "\r\n"
              "fooba",
              HPE_OK);

  static const char *all_methods[] = {
    "DELETE",
    "GET",
    "HEAD",
    "POST",
    "PUT",
    //"CONNECT", //CONNECT can't be tested like other methods, it's a tunnel
    "OPTIONS",
    "TRACE",
    "COPY",
    "LOCK",
    "MKCOL",
    "MOVE",
    "PROPFIND",
    "PROPPATCH",
    "SEARCH",
    "UNLOCK",
    "BIND",
    "REBIND",
    "UNBIND",
    "ACL",
    "REPORT",
    "MKACTIVITY",
    "CHECKOUT",
    "MERGE",
    "M-SEARCH",
    "NOTIFY",
    "SUBSCRIBE",
    "UNSUBSCRIBE",
    "PATCH",
    "PURGE",
    "MKCALENDAR",
    "LINK",
    "UNLINK",
    0 };
  const char **this_method;
  for (this_method = all_methods; *this_method; this_method++) {
    char buf[200];
    FUNC6(buf, "%s / HTTP/1.1\r\n\r\n", *this_method);
    FUNC27(buf, HPE_OK);
  }

  static const char *bad_methods[] = {
      "ASDF",
      "C******",
      "COLA",
      "GEM",
      "GETA",
      "M****",
      "MKCOLA",
      "PROPPATCHA",
      "PUN",
      "PX",
      "SA",
      "hello world",
      0 };
  for (this_method = bad_methods; *this_method; this_method++) {
    char buf[200];
    FUNC6(buf, "%s / HTTP/1.1\r\n\r\n", *this_method);
    FUNC27(buf, HPE_INVALID_METHOD);
  }

  // illegal header field name line folding
  FUNC27("GET / HTTP/1.1\r\n"
              "name\r\n"
              " : value\r\n"
              "\r\n",
              HPE_INVALID_HEADER_TOKEN);

  const char *dumbluck2 =
    "GET / HTTP/1.1\r\n"
    "X-SSL-Nonsense:   -----BEGIN CERTIFICATE-----\r\n"
    "\tMIIFbTCCBFWgAwIBAgICH4cwDQYJKoZIhvcNAQEFBQAwcDELMAkGA1UEBhMCVUsx\r\n"
    "\tETAPBgNVBAoTCGVTY2llbmNlMRIwEAYDVQQLEwlBdXRob3JpdHkxCzAJBgNVBAMT\r\n"
    "\tAkNBMS0wKwYJKoZIhvcNAQkBFh5jYS1vcGVyYXRvckBncmlkLXN1cHBvcnQuYWMu\r\n"
    "\tdWswHhcNMDYwNzI3MTQxMzI4WhcNMDcwNzI3MTQxMzI4WjBbMQswCQYDVQQGEwJV\r\n"
    "\tSzERMA8GA1UEChMIZVNjaWVuY2UxEzARBgNVBAsTCk1hbmNoZXN0ZXIxCzAJBgNV\r\n"
    "\tBAcTmrsogriqMWLAk1DMRcwFQYDVQQDEw5taWNoYWVsIHBhcmQYJKoZIhvcNAQEB\r\n"
    "\tBQADggEPADCCAQoCggEBANPEQBgl1IaKdSS1TbhF3hEXSl72G9J+WC/1R64fAcEF\r\n"
    "\tW51rEyFYiIeZGx/BVzwXbeBoNUK41OK65sxGuflMo5gLflbwJtHBRIEKAfVVp3YR\r\n"
    "\tgW7cMA/s/XKgL1GEC7rQw8lIZT8RApukCGqOVHSi/F1SiFlPDxuDfmdiNzL31+sL\r\n"
    "\t0iwHDdNkGjy5pyBSB8Y79dsSJtCW/iaLB0/n8Sj7HgvvZJ7x0fr+RQjYOUUfrePP\r\n"
    "\tu2MSpFyf+9BbC/aXgaZuiCvSR+8Snv3xApQY+fULK/xY8h8Ua51iXoQ5jrgu2SqR\r\n"
    "\twgA7BUi3G8LFzMBl8FRCDYGUDy7M6QaHXx1ZWIPWNKsCAwEAAaOCAiQwggIgMAwG\r\n"
    "\tA1UdEwEB/wQCMAAwEQYJYIZIAYb4QgHTTPAQDAgWgMA4GA1UdDwEB/wQEAwID6DAs\r\n"
    "\tBglghkgBhvhCAQ0EHxYdVUsgZS1TY2llbmNlIFVzZXIgQ2VydGlmaWNhdGUwHQYD\r\n"
    "\tVR0OBBYEFDTt/sf9PeMaZDHkUIldrDYMNTBZMIGaBgNVHSMEgZIwgY+AFAI4qxGj\r\n"
    "\tloCLDdMVKwiljjDastqooXSkcjBwMQswCQYDVQQGEwJVSzERMA8GA1UEChMIZVNj\r\n"
    "\taWVuY2UxEjAQBgNVBAsTCUF1dGhvcml0eTELMAkGA1UEAxMCQ0ExLTArBgkqhkiG\r\n"
    "\t9w0BCQEWHmNhLW9wZXJhdG9yQGdyaWQtc3VwcG9ydC5hYy51a4IBADApBgNVHRIE\r\n"
    "\tIjAggR5jYS1vcGVyYXRvckBncmlkLXN1cHBvcnQuYWMudWswGQYDVR0gBBIwEDAO\r\n"
    "\tBgwrBgEEAdkvAQEBAQYwPQYJYIZIAYb4QgEEBDAWLmh0dHA6Ly9jYS5ncmlkLXN1\r\n"
    "\tcHBvcnQuYWMudmT4sopwqlBWsvcHViL2NybC9jYWNybC5jcmwwPQYJYIZIAYb4QgEDBDAWLmh0\r\n"
    "\tdHA6Ly9jYS5ncmlkLXN1cHBvcnQuYWMudWsvcHViL2NybC9jYWNybC5jcmwwPwYD\r\n"
    "\tVR0fBDgwNjA0oDKgMIYuaHR0cDovL2NhLmdyaWQt5hYy51ay9wdWIv\r\n"
    "\tY3JsL2NhY3JsLmNybDANBgkqhkiG9w0BAQUFAAOCAQEAS/U4iiooBENGW/Hwmmd3\r\n"
    "\tXCy6Zrt08YjKCzGNjorT98g8uGsqYjSxv/hmi0qlnlHs+k/3Iobc3LjS5AMYr5L8\r\n"
    "\tUO7OSkgFFlLHQyC9JzPfmLCAugvzEbyv4Olnsr8hbxF1MbKZoQxUZtMVu29wjfXk\r\n"
    "\thTeApBv7eaKCWpSp7MCbvgzm74izKhu3vlDk9w6qVrxePfGgpKPqfHiOoGhFnbTK\r\n"
    "\twTC6o2xq5y0qZ03JonF7OJspEd3I5zKY3E+ov7/ZhW6DqT8UFvsAdjvQbXyhV8Eu\r\n"
    "\tYhixw1aKEPzNjNowuIseVogKOLXxWI5vAi5HgXdS0/ES5gDGsABo4fqovUKlgop3\r\n"
    "\tRA==\r\n"
    "\t-----END CERTIFICATE-----\r\n"
    "\r\n";
  FUNC27(dumbluck2, HPE_OK);

  const char *corrupted_connection =
    "GET / HTTP/1.1\r\n"
    "Host: www.example.com\r\n"
    "Connection\r\033\065\325eep-Alive\r\n"
    "Accept-Encoding: gzip\r\n"
    "\r\n";
  FUNC27(corrupted_connection, HPE_INVALID_HEADER_TOKEN);

  const char *corrupted_header_name =
    "GET / HTTP/1.1\r\n"
    "Host: www.example.com\r\n"
    "X-Some-Header\r\033\065\325eep-Alive\r\n"
    "Accept-Encoding: gzip\r\n"
    "\r\n";
  FUNC27(corrupted_header_name, HPE_INVALID_HEADER_TOKEN);

#if 0
  // NOTE(Wed Nov 18 11:57:27 CET 2009) this seems okay. we just read body
  // until EOF.
  //
  // no content-length
  // error if there is a body without content length
  const char *bad_get_no_headers_no_body = "GET /bad_get_no_headers_no_body/world HTTP/1.1\r\n"
                                           "Accept: */*\r\n"
                                           "\r\n"
                                           "HELLO";
  test_simple(bad_get_no_headers_no_body, 0);
#endif
  /* TODO sending junk and large headers gets rejected */


  /* check to make sure our predefined requests are okay */
  for (i = 0; i < FUNC0(requests); i++) {
    FUNC16(&requests[i]);
  }

  for (i = 0; i < FUNC0(requests); i++) {
    FUNC19(&requests[i]);
  }

  for (i = 0; i < FUNC0(requests); i++) {
    if (!requests[i].should_keep_alive) continue;
    for (j = 0; j < FUNC0(requests); j++) {
      if (!requests[j].should_keep_alive) continue;
      for (k = 0; k < FUNC0(requests); k++) {
        FUNC21(&requests[i], &requests[j], &requests[k]);
      }
    }
  }

  FUNC4("request scan 1/4      ");
  FUNC26( &requests[GET_NO_HEADERS_NO_BODY]
           , &requests[GET_ONE_HEADER_NO_BODY]
           , &requests[GET_NO_HEADERS_NO_BODY]
           );

  FUNC4("request scan 2/4      ");
  FUNC26( &requests[POST_CHUNKED_ALL_YOUR_BASE]
           , &requests[POST_IDENTITY_BODY_WORLD]
           , &requests[GET_FUNKY_CONTENT_LENGTH]
           );

  FUNC4("request scan 3/4      ");
  FUNC26( &requests[TWO_CHUNKS_MULT_ZERO_END]
           , &requests[CHUNKED_W_TRAILING_HEADERS]
           , &requests[CHUNKED_W_NONSENSE_AFTER_LENGTH]
           );

  FUNC4("request scan 4/4      ");
  FUNC26( &requests[QUERY_URL_WITH_QUESTION_MARK_GET]
           , &requests[PREFIX_NEWLINE_GET ]
           , &requests[CONNECT_REQUEST]
           );

  FUNC5("requests okay");

  return 0;
}