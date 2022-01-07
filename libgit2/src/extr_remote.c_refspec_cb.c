
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct refspec_cb_data {int fetch; int remote; } ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ git_config_entry ;


 int add_refspec (int ,int ,int ) ;

__attribute__((used)) static int refspec_cb(const git_config_entry *entry, void *payload)
{
 struct refspec_cb_data *data = (struct refspec_cb_data *)payload;
 return add_refspec(data->remote, entry->value, data->fetch);
}
