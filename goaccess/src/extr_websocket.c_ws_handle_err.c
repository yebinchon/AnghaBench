
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WSStatus ;
struct TYPE_4__ {int status; } ;
typedef TYPE_1__ WSClient ;


 int ws_error (TYPE_1__*,unsigned short,char const*) ;

__attribute__((used)) static int
ws_handle_err (WSClient * client, unsigned short code, WSStatus status,
               const char *m)
{
  client->status = status;
  return ws_error (client, code, m);
}
