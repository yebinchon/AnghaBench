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
struct message {scalar_t__ type; int status_cb_called; int message_begin_cb_called; int headers_complete_cb_called; int message_complete_cb_called; char* request_url; scalar_t__ method; int body_size; int num_chunks_complete; int num_chunks; int num_headers; int /*<<< orphan*/ ** headers; int /*<<< orphan*/  port; scalar_t__ userinfo; scalar_t__ host; } ;
struct http_parser_url {int field_set; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 scalar_t__ HTTP_CONNECT ; 
 scalar_t__ HTTP_REQUEST ; 
 int MAX_CHUNKS ; 
 int /*<<< orphan*/  FUNC0 (struct message const*,struct message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct message const*,struct message*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct http_parser_url*,struct message const*,struct message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UF_FRAGMENT ; 
 int /*<<< orphan*/  UF_HOST ; 
 int /*<<< orphan*/  UF_PATH ; 
 int UF_PORT ; 
 int /*<<< orphan*/  UF_QUERY ; 
 int /*<<< orphan*/  UF_USERINFO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  body ; 
 int /*<<< orphan*/  body_size ; 
 int /*<<< orphan*/  FUNC5 (struct message*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct message const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * chunk_lengths ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  fragment ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  http_major ; 
 int /*<<< orphan*/  http_minor ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_parser_url*) ; 
 int /*<<< orphan*/  message_complete_on_eof ; 
 struct message* messages ; 
 int /*<<< orphan*/  method ; 
 int /*<<< orphan*/  num_chunks_complete ; 
 int /*<<< orphan*/  num_headers ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  query_string ; 
 int /*<<< orphan*/  request_path ; 
 int /*<<< orphan*/  request_url ; 
 int /*<<< orphan*/  response_status ; 
 int /*<<< orphan*/  should_keep_alive ; 
 int /*<<< orphan*/  status_code ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  upgrade ; 
 int /*<<< orphan*/  userinfo ; 

int
FUNC10 (int index, int connect, const struct message *expected)
{
  int i;
  struct message *m = &messages[index];

  FUNC0(expected, m, http_major);
  FUNC0(expected, m, http_minor);

  if (expected->type == HTTP_REQUEST) {
    FUNC0(expected, m, method);
  } else {
    FUNC0(expected, m, status_code);
    FUNC1(expected, m, response_status);
    FUNC4(m->status_cb_called);
  }

  if (!connect) {
    FUNC0(expected, m, should_keep_alive);
    FUNC0(expected, m, message_complete_on_eof);
  }

  FUNC4(m->message_begin_cb_called);
  FUNC4(m->headers_complete_cb_called);
  FUNC4(m->message_complete_cb_called);


  FUNC1(expected, m, request_url);

  /* Check URL components; we can't do this w/ CONNECT since it doesn't
   * send us a well-formed URL.
   */
  if (*m->request_url && m->method != HTTP_CONNECT) {
    struct http_parser_url u;

    if (FUNC8(m->request_url, FUNC9(m->request_url), 0, &u)) {
      FUNC7(stderr, "\n\n*** failed to parse URL %s ***\n\n",
        m->request_url);
      FUNC3();
    }

    if (expected->host) {
      FUNC2(&u, expected, m, host, UF_HOST);
    }

    if (expected->userinfo) {
      FUNC2(&u, expected, m, userinfo, UF_USERINFO);
    }

    m->port = (u.field_set & (1 << UF_PORT)) ?
      u.port : 0;

    FUNC2(&u, expected, m, query_string, UF_QUERY);
    FUNC2(&u, expected, m, fragment, UF_FRAGMENT);
    FUNC2(&u, expected, m, request_path, UF_PATH);
    FUNC0(expected, m, port);
  }

  if (connect) {
    FUNC5(m, "body_size", 0, m->body_size);
  } else if (expected->body_size) {
    FUNC0(expected, m, body_size);
  } else {
    FUNC1(expected, m, body);
  }

  if (connect) {
    FUNC5(m, "num_chunks_complete", 0, m->num_chunks_complete);
  } else {
    FUNC4(m->num_chunks == m->num_chunks_complete);
    FUNC0(expected, m, num_chunks_complete);
    for (i = 0; i < m->num_chunks && i < MAX_CHUNKS; i++) {
      FUNC0(expected, m, chunk_lengths[i]);
    }
  }

  FUNC0(expected, m, num_headers);

  int r;
  for (i = 0; i < m->num_headers; i++) {
    r = FUNC6(expected, "header field", expected->headers[i][0], m->headers[i][0]);
    if (!r) return 0;
    r = FUNC6(expected, "header value", expected->headers[i][1], m->headers[i][1]);
    if (!r) return 0;
  }

  if (!connect) {
    FUNC1(expected, m, upgrade);
  }

  return 1;
}