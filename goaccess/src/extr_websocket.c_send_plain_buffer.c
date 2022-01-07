
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int listener; } ;
typedef TYPE_1__ WSClient ;


 int send (int ,char const*,int,int ) ;

__attribute__((used)) static int
send_plain_buffer (WSClient * client, const char *buffer, int len)
{
  return send (client->listener, buffer, len, 0);
}
