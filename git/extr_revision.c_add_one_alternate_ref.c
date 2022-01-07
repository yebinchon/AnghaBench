
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct add_alternate_refs_data {int revs; int flags; } ;


 int REV_CMD_REV ;
 int add_pending_object (int ,struct object*,char const*) ;
 int add_rev_cmdline (int ,struct object*,char const*,int ,int ) ;
 struct object* get_reference (int ,char const*,struct object_id const*,int ) ;

__attribute__((used)) static void add_one_alternate_ref(const struct object_id *oid,
      void *vdata)
{
 const char *name = ".alternate";
 struct add_alternate_refs_data *data = vdata;
 struct object *obj;

 obj = get_reference(data->revs, name, oid, data->flags);
 add_rev_cmdline(data->revs, obj, name, REV_CMD_REV, data->flags);
 add_pending_object(data->revs, obj, name);
}
