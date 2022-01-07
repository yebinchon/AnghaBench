
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct fsck_options {int object_names; } ;


 char* lookup_decoration (int ,struct object*) ;

__attribute__((used)) static char *get_object_name(struct fsck_options *options, struct object *obj)
{
 if (!options->object_names)
  return ((void*)0);
 return lookup_decoration(options->object_names, obj);
}
