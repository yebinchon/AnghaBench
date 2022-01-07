
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int state; } ;
typedef TYPE_1__ client_ctx ;


 int ASSERT (int) ;
 scalar_t__ DEBUG_CHECKS ;
 int UNREACHABLE () ;
 int do_almost_dead (TYPE_1__*) ;
 int do_handshake (TYPE_1__*) ;
 int do_handshake_auth (TYPE_1__*) ;
 int do_kill (TYPE_1__*) ;
 int do_proxy (TYPE_1__*) ;
 int do_proxy_start (TYPE_1__*) ;
 int do_req_connect (TYPE_1__*) ;
 int do_req_lookup (TYPE_1__*) ;
 int do_req_parse (TYPE_1__*) ;
 int do_req_start (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int,int) ;





 int s_dead ;
__attribute__((used)) static void do_next(client_ctx *cx) {
  int new_state;

  ASSERT(cx->state != s_dead);
  switch (cx->state) {
    case 136:
      new_state = do_handshake(cx);
      break;
    case 135:
      new_state = do_handshake_auth(cx);
      break;
    case 128:
      new_state = do_req_start(cx);
      break;
    case 129:
      new_state = do_req_parse(cx);
      break;
    case 130:
      new_state = do_req_lookup(cx);
      break;
    case 131:
      new_state = do_req_connect(cx);
      break;
    case 132:
      new_state = do_proxy_start(cx);
      break;
    case 133:
      new_state = do_proxy(cx);
      break;
    case 134:
      new_state = do_kill(cx);
      break;
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
      new_state = do_almost_dead(cx);
      break;
    default:
      UNREACHABLE();
  }
  cx->state = new_state;

  if (cx->state == s_dead) {
    if (DEBUG_CHECKS) {
      memset(cx, -1, sizeof(*cx));
    }
    free(cx);
  }
}
