
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {scalar_t__ verbose; int family; int url; struct git_transport_data* data; } ;
struct TYPE_2__ {int uploadpack; int receivepack; } ;
struct git_transport_data {TYPE_1__ options; int fd; scalar_t__ conn; } ;


 int CONNECT_IPV4 ;
 int CONNECT_IPV6 ;
 int CONNECT_VERBOSE ;



 scalar_t__ git_connect (int ,int ,int ,int) ;

__attribute__((used)) static int connect_setup(struct transport *transport, int for_push)
{
 struct git_transport_data *data = transport->data;
 int flags = transport->verbose > 0 ? CONNECT_VERBOSE : 0;

 if (data->conn)
  return 0;

 switch (transport->family) {
 case 130: break;
 case 129: flags |= CONNECT_IPV4; break;
 case 128: flags |= CONNECT_IPV6; break;
 }

 data->conn = git_connect(data->fd, transport->url,
     for_push ? data->options.receivepack :
     data->options.uploadpack,
     flags);

 return 0;
}
