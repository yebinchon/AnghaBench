
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WSClient ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;


 int send_plain_buffer (int *,char const*,int) ;
 int send_ssl_buffer (int *,char const*,int) ;
 TYPE_1__ wsconfig ;

__attribute__((used)) static int
send_buffer (WSClient * client, const char *buffer, int len)
{






  return send_plain_buffer (client, buffer, len);

}
