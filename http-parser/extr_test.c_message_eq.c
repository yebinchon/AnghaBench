
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ type; int status_cb_called; int message_begin_cb_called; int headers_complete_cb_called; int message_complete_cb_called; char* request_url; scalar_t__ method; int body_size; int num_chunks_complete; int num_chunks; int num_headers; int ** headers; int port; scalar_t__ userinfo; scalar_t__ host; } ;
struct http_parser_url {int field_set; int port; } ;


 scalar_t__ HTTP_CONNECT ;
 scalar_t__ HTTP_REQUEST ;
 int MAX_CHUNKS ;
 int MESSAGE_CHECK_NUM_EQ (struct message const*,struct message*,int ) ;
 int MESSAGE_CHECK_STR_EQ (struct message const*,struct message*,int ) ;
 int MESSAGE_CHECK_URL_EQ (struct http_parser_url*,struct message const*,struct message*,int ,int ) ;
 int UF_FRAGMENT ;
 int UF_HOST ;
 int UF_PATH ;
 int UF_PORT ;
 int UF_QUERY ;
 int UF_USERINFO ;
 int abort () ;
 int assert (int) ;
 int body ;
 int body_size ;
 int check_num_eq (struct message*,char*,int ,int) ;
 int check_str_eq (struct message const*,char*,int ,int ) ;
 int * chunk_lengths ;
 int fprintf (int ,char*,char*) ;
 int fragment ;
 int host ;
 int http_major ;
 int http_minor ;
 scalar_t__ http_parser_parse_url (char*,int ,int ,struct http_parser_url*) ;
 int message_complete_on_eof ;
 struct message* messages ;
 int method ;
 int num_chunks_complete ;
 int num_headers ;
 int port ;
 int query_string ;
 int request_path ;
 int request_url ;
 int response_status ;
 int should_keep_alive ;
 int status_code ;
 int stderr ;
 int strlen (char*) ;
 int upgrade ;
 int userinfo ;

int
message_eq (int index, int connect, const struct message *expected)
{
  int i;
  struct message *m = &messages[index];

  MESSAGE_CHECK_NUM_EQ(expected, m, http_major);
  MESSAGE_CHECK_NUM_EQ(expected, m, http_minor);

  if (expected->type == HTTP_REQUEST) {
    MESSAGE_CHECK_NUM_EQ(expected, m, method);
  } else {
    MESSAGE_CHECK_NUM_EQ(expected, m, status_code);
    MESSAGE_CHECK_STR_EQ(expected, m, response_status);
    assert(m->status_cb_called);
  }

  if (!connect) {
    MESSAGE_CHECK_NUM_EQ(expected, m, should_keep_alive);
    MESSAGE_CHECK_NUM_EQ(expected, m, message_complete_on_eof);
  }

  assert(m->message_begin_cb_called);
  assert(m->headers_complete_cb_called);
  assert(m->message_complete_cb_called);


  MESSAGE_CHECK_STR_EQ(expected, m, request_url);




  if (*m->request_url && m->method != HTTP_CONNECT) {
    struct http_parser_url u;

    if (http_parser_parse_url(m->request_url, strlen(m->request_url), 0, &u)) {
      fprintf(stderr, "\n\n*** failed to parse URL %s ***\n\n",
        m->request_url);
      abort();
    }

    if (expected->host) {
      MESSAGE_CHECK_URL_EQ(&u, expected, m, host, UF_HOST);
    }

    if (expected->userinfo) {
      MESSAGE_CHECK_URL_EQ(&u, expected, m, userinfo, UF_USERINFO);
    }

    m->port = (u.field_set & (1 << UF_PORT)) ?
      u.port : 0;

    MESSAGE_CHECK_URL_EQ(&u, expected, m, query_string, UF_QUERY);
    MESSAGE_CHECK_URL_EQ(&u, expected, m, fragment, UF_FRAGMENT);
    MESSAGE_CHECK_URL_EQ(&u, expected, m, request_path, UF_PATH);
    MESSAGE_CHECK_NUM_EQ(expected, m, port);
  }

  if (connect) {
    check_num_eq(m, "body_size", 0, m->body_size);
  } else if (expected->body_size) {
    MESSAGE_CHECK_NUM_EQ(expected, m, body_size);
  } else {
    MESSAGE_CHECK_STR_EQ(expected, m, body);
  }

  if (connect) {
    check_num_eq(m, "num_chunks_complete", 0, m->num_chunks_complete);
  } else {
    assert(m->num_chunks == m->num_chunks_complete);
    MESSAGE_CHECK_NUM_EQ(expected, m, num_chunks_complete);
    for (i = 0; i < m->num_chunks && i < MAX_CHUNKS; i++) {
      MESSAGE_CHECK_NUM_EQ(expected, m, chunk_lengths[i]);
    }
  }

  MESSAGE_CHECK_NUM_EQ(expected, m, num_headers);

  int r;
  for (i = 0; i < m->num_headers; i++) {
    r = check_str_eq(expected, "header field", expected->headers[i][0], m->headers[i][0]);
    if (!r) return 0;
    r = check_str_eq(expected, "header value", expected->headers[i][1], m->headers[i][1]);
    if (!r) return 0;
  }

  if (!connect) {
    MESSAGE_CHECK_STR_EQ(expected, m, upgrade);
  }

  return 1;
}
