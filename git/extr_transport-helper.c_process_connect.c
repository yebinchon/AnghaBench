
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {struct helper_data* data; } ;
struct TYPE_2__ {char* receivepack; char* uploadpack; } ;
struct helper_data {TYPE_1__ transport_options; } ;


 int process_connect_service (struct transport*,char const*,char const*) ;

__attribute__((used)) static int process_connect(struct transport *transport,
         int for_push)
{
 struct helper_data *data = transport->data;
 const char *name;
 const char *exec;

 name = for_push ? "git-receive-pack" : "git-upload-pack";
 if (for_push)
  exec = data->transport_options.receivepack;
 else
  exec = data->transport_options.uploadpack;

 return process_connect_service(transport, name, exec);
}
