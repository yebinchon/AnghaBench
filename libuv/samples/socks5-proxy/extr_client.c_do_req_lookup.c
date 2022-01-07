
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int dport; int daddr; } ;
typedef TYPE_5__ s5_ctx ;
struct TYPE_13__ {void* sin6_port; } ;
struct TYPE_12__ {void* sin_port; } ;
struct TYPE_11__ {int sa_family; } ;
struct TYPE_14__ {TYPE_3__ addr6; TYPE_2__ addr4; TYPE_1__ addr; } ;
struct TYPE_16__ {scalar_t__ rdstate; scalar_t__ wrstate; scalar_t__ result; TYPE_4__ t; } ;
typedef TYPE_6__ conn ;
struct TYPE_17__ {TYPE_6__ outgoing; TYPE_6__ incoming; TYPE_5__ parser; } ;
typedef TYPE_7__ client_ctx ;




 int ASSERT (int) ;
 int UNREACHABLE () ;
 scalar_t__ c_stop ;
 int conn_write (TYPE_6__*,char*,int) ;
 int do_req_connect_start (TYPE_7__*) ;
 void* htons (int ) ;
 int pr_err (char*,int ,int ) ;
 int s_kill ;
 int uv_strerror (scalar_t__) ;

__attribute__((used)) static int do_req_lookup(client_ctx *cx) {
  s5_ctx *parser;
  conn *incoming;
  conn *outgoing;

  parser = &cx->parser;
  incoming = &cx->incoming;
  outgoing = &cx->outgoing;
  ASSERT(incoming->rdstate == c_stop);
  ASSERT(incoming->wrstate == c_stop);
  ASSERT(outgoing->rdstate == c_stop);
  ASSERT(outgoing->wrstate == c_stop);

  if (outgoing->result < 0) {

    pr_err("lookup error for \"%s\": %s",
           parser->daddr,
           uv_strerror(outgoing->result));

    conn_write(incoming, "\5\4\0\1\0\0\0\0\0\0", 10);
    return s_kill;
  }


  switch (outgoing->t.addr.sa_family) {
    case 129:
      outgoing->t.addr4.sin_port = htons(parser->dport);
      break;
    case 128:
      outgoing->t.addr6.sin6_port = htons(parser->dport);
      break;
    default:
      UNREACHABLE();
  }

  return do_req_connect_start(cx);
}
