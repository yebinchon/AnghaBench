
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ git_config_entry ;


 int _name ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int mv_read_cb(const git_config_entry *entry, void *data)
{
 int *n = (int *) data;

 if (!strcmp(entry->name, _name))
  (*n)++;

 return 0;
}
