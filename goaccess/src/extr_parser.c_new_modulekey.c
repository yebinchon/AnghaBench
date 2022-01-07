
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uniq_nkey; int * uniq_key; int root_nkey; int * root_key; int * root; int data_nkey; int * data_key; int * data; } ;
typedef TYPE_1__ GKeyData ;



__attribute__((used)) static void
new_modulekey (GKeyData * kdata)
{
  GKeyData key = {
    .data = ((void*)0),
    .data_key = ((void*)0),
    .data_nkey = 0,
    .root = ((void*)0),
    .root_key = ((void*)0),
    .root_nkey = 0,
    .uniq_key = ((void*)0),
    .uniq_nkey = 0,
  };
  *kdata = key;
}
