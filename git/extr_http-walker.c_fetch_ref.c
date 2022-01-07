
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct walker_data {TYPE_1__* alt; } ;
struct walker {struct walker_data* data; } ;
struct ref {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int http_fetch_ref (int ,struct ref*) ;

__attribute__((used)) static int fetch_ref(struct walker *walker, struct ref *ref)
{
 struct walker_data *data = walker->data;
 return http_fetch_ref(data->alt->base, ref);
}
