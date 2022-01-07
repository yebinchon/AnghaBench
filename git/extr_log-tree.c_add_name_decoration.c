
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct name_decoration {int type; int next; } ;
typedef enum decoration_type { ____Placeholder_decoration_type } decoration_type ;


 int FLEX_ALLOC_STR (struct name_decoration*,char const*,char const*) ;
 int add_decoration (int *,struct object*,struct name_decoration*) ;
 int name_decoration ;

void add_name_decoration(enum decoration_type type, const char *name, struct object *obj)
{
 struct name_decoration *res;
 FLEX_ALLOC_STR(res, name, name);
 res->type = type;
 res->next = add_decoration(&name_decoration, obj, res);
}
