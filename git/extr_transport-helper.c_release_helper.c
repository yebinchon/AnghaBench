
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {struct helper_data* data; } ;
struct helper_data {int rs; } ;


 int disconnect_helper (struct transport*) ;
 int free (struct helper_data*) ;
 int refspec_clear (int *) ;

__attribute__((used)) static int release_helper(struct transport *transport)
{
 int res = 0;
 struct helper_data *data = transport->data;
 refspec_clear(&data->rs);
 res = disconnect_helper(transport);
 free(transport->data);
 return res;
}
