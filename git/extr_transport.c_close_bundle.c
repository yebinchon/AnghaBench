
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct bundle_transport_data* data; } ;
struct bundle_transport_data {scalar_t__ fd; } ;


 int close (scalar_t__) ;
 int free (struct bundle_transport_data*) ;

__attribute__((used)) static int close_bundle(struct transport *transport)
{
 struct bundle_transport_data *data = transport->data;
 if (data->fd > 0)
  close(data->fd);
 free(data);
 return 0;
}
