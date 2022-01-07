
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WSStatus ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ WSClient ;



__attribute__((used)) static int
ws_set_status (WSClient * client, WSStatus status, int bytes)
{
  client->status = status;
  return bytes;
}
