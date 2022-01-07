
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {struct helper_data* data; } ;
struct helper_data {TYPE_1__* helper; int connect; } ;
struct TYPE_2__ {int out; int in; } ;


 int _ (char*) ;
 int die (int ,...) ;
 int get_helper (struct transport*) ;
 int process_connect_service (struct transport*,char const*,char const*) ;

__attribute__((used)) static int connect_helper(struct transport *transport, const char *name,
     const char *exec, int fd[2])
{
 struct helper_data *data = transport->data;


 get_helper(transport);
 if (!data->connect)
  die(_("operation not supported by protocol"));

 if (!process_connect_service(transport, name, exec))
  die(_("can't connect to subservice %s"), name);

 fd[0] = data->helper->out;
 fd[1] = data->helper->in;
 return 0;
}
