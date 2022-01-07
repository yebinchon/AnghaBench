
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct message {char* name; scalar_t__ upgrade; int type; scalar_t__ raw; } ;
struct TYPE_6__ {char* upgrade; scalar_t__ message_complete_cb_called; } ;
struct TYPE_5__ {scalar_t__ upgrade; } ;


 scalar_t__ HPE_PAUSED ;
 scalar_t__ HPE_STRICT ;
 scalar_t__ HTTP_PARSER_ERRNO (TYPE_1__*) ;
 int abort () ;
 int assert (int) ;
 int http_parser_pause (TYPE_1__*,int ) ;
 int message_eq (int ,int ,struct message const*) ;
 TYPE_2__* messages ;
 int num_messages ;
 size_t parse_pause (char*,size_t) ;
 TYPE_1__ parser ;
 int parser_init (int ) ;
 int printf (char*,char*) ;
 size_t strlen (scalar_t__) ;

void
test_message_pause (const struct message *msg)
{
  char *buf = (char*) msg->raw;
  size_t buflen = strlen(msg->raw);
  size_t nread;

  parser_init(msg->type);

  do {
    nread = parse_pause(buf, buflen);



    if (messages[0].message_complete_cb_called &&
        msg->upgrade &&
        parser.upgrade) {
      messages[0].upgrade = buf + nread;
      goto test;
    }

    if (nread < buflen) {


      if (HTTP_PARSER_ERRNO(&parser) == HPE_STRICT) {
        return;
      }

      assert (HTTP_PARSER_ERRNO(&parser) == HPE_PAUSED);
    }

    buf += nread;
    buflen -= nread;
    http_parser_pause(&parser, 0);
  } while (buflen > 0);

  nread = parse_pause(((void*)0), 0);
  assert (nread == 0);

test:
  if (num_messages != 1) {
    printf("\n*** num_messages != 1 after testing '%s' ***\n\n", msg->name);
    abort();
  }

  if(!message_eq(0, 0, msg)) abort();
}
