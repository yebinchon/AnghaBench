
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transport {TYPE_1__* vtable; } ;
struct TYPE_2__ {int (* connect ) (struct transport*,char const*,char const*,int*) ;} ;


 int _ (char*) ;
 int die (int ) ;
 int stub1 (struct transport*,char const*,char const*,int*) ;

int transport_connect(struct transport *transport, const char *name,
        const char *exec, int fd[2])
{
 if (transport->vtable->connect)
  return transport->vtable->connect(transport, name, exec, fd);
 else
  die(_("operation not supported by protocol"));
}
