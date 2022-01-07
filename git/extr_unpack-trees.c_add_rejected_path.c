
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int * unpack_rejects; int show_all_errors; scalar_t__ quiet; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int ERRORMSG (struct unpack_trees_options*,int) ;
 int error (int ,int ) ;
 int string_list_append (int *,char const*) ;
 int super_prefixed (char const*) ;

__attribute__((used)) static int add_rejected_path(struct unpack_trees_options *o,
        enum unpack_trees_error_types e,
        const char *path)
{
 if (o->quiet)
  return -1;

 if (!o->show_all_errors)
  return error(ERRORMSG(o, e), super_prefixed(path));





 string_list_append(&o->unpack_rejects[e], path);
 return -1;
}
