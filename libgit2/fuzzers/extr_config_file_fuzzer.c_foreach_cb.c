
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_config_entry ;


 int UNUSED (void*) ;

int foreach_cb(const git_config_entry *entry, void *payload)
{
 UNUSED(entry);
 UNUSED(payload);

 return 0;
}
