
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int * smart_options; int * vtable; struct helper_data* data; } ;
struct helper_data {char const* name; int transport_options; } ;


 int debug ;
 scalar_t__ getenv (char*) ;
 int transport_check_allowed (char const*) ;
 int vtable ;
 struct helper_data* xcalloc (int,int) ;

int transport_helper_init(struct transport *transport, const char *name)
{
 struct helper_data *data = xcalloc(1, sizeof(*data));
 data->name = name;

 transport_check_allowed(name);

 if (getenv("GIT_TRANSPORT_HELPER_DEBUG"))
  debug = 1;

 transport->data = data;
 transport->vtable = &vtable;
 transport->smart_options = &(data->transport_options);
 return 0;
}
