
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;


 int starts_with (int ,char const*) ;

__attribute__((used)) static int prefix_cb(struct string_list_item *item, void *cb_data)
{
 const char *prefix = (const char *)cb_data;
 return starts_with(item->string, prefix);
}
