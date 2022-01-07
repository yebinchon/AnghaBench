
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WSClient ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;


 int read_plain_socket (int *,char*,int) ;
 int read_ssl_socket (int *,char*,int) ;
 TYPE_1__ wsconfig ;

__attribute__((used)) static int
read_socket (WSClient * client, char *buffer, int size)
{






  return read_plain_socket (client, buffer, size);

}
