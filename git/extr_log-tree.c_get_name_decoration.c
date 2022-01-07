
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct name_decoration {int dummy; } ;


 int DECORATE_SHORT_REFS ;
 int load_ref_decorations (int *,int ) ;
 struct name_decoration const* lookup_decoration (int *,struct object const*) ;
 int name_decoration ;

const struct name_decoration *get_name_decoration(const struct object *obj)
{
 load_ref_decorations(((void*)0), DECORATE_SHORT_REFS);
 return lookup_decoration(&name_decoration, obj);
}
