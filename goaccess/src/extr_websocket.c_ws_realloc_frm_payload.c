
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ payloadsz; char* payload; } ;
typedef TYPE_1__ WSMessage ;
struct TYPE_6__ {scalar_t__ payloadlen; } ;
typedef TYPE_2__ WSFrame ;


 int free (char*) ;
 char* realloc (char*,scalar_t__) ;

__attribute__((used)) static int
ws_realloc_frm_payload (WSFrame * frm, WSMessage * msg)
{
  char *tmp = ((void*)0);
  uint64_t newlen = 0;

  newlen = msg->payloadsz + frm->payloadlen;
  tmp = realloc (msg->payload, newlen);
  if (tmp == ((void*)0) && newlen > 0) {
    free (msg->payload);
    msg->payload = ((void*)0);
    return 1;
  }
  msg->payload = tmp;

  return 0;
}
