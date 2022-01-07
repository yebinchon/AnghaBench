
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {scalar_t__ data; } ;
struct helper_data {int out; int helper; } ;


 int fclose (int ) ;
 int free (struct helper_data*) ;
 int transport_take_over (struct transport*,int ) ;

__attribute__((used)) static void do_take_over(struct transport *transport)
{
 struct helper_data *data;
 data = (struct helper_data *)transport->data;
 transport_take_over(transport, data->helper);
 fclose(data->out);
 free(data);
}
