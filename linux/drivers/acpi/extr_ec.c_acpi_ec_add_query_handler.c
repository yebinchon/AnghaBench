
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acpi_ec_query_handler {int node; int kref; void* data; int func; int handle; int query_bit; } ;
struct acpi_ec {int mutex; int list; } ;
typedef int acpi_handle ;
typedef int acpi_ec_query_func ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct acpi_ec_query_handler* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int acpi_ec_add_query_handler(struct acpi_ec *ec, u8 query_bit,
         acpi_handle handle, acpi_ec_query_func func,
         void *data)
{
 struct acpi_ec_query_handler *handler =
     kzalloc(sizeof(struct acpi_ec_query_handler), GFP_KERNEL);

 if (!handler)
  return -ENOMEM;

 handler->query_bit = query_bit;
 handler->handle = handle;
 handler->func = func;
 handler->data = data;
 mutex_lock(&ec->mutex);
 kref_init(&handler->kref);
 list_add(&handler->node, &ec->list);
 mutex_unlock(&ec->mutex);
 return 0;
}
