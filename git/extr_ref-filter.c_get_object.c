
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct ref_array_item {int value; int refname; } ;
struct object {int dummy; } ;
struct TYPE_2__ {scalar_t__ contentp; scalar_t__ disk_sizep; int * typep; int * sizep; } ;
struct expand_data {scalar_t__ disk_size; int content; int oid; int size; int type; TYPE_1__ info; } ;


 int BUG (char*) ;
 int OBJECT_INFO_LOOKUP_REPLACE ;
 int _ (char*) ;
 int free (int ) ;
 int grab_common_values (int ,int,struct expand_data*) ;
 int grab_values (int ,int,struct object*,int ) ;
 scalar_t__ oid_object_info_extended (int ,int *,TYPE_1__*,int ) ;
 int oid_to_hex (int *) ;
 struct object* parse_object_buffer (int ,int *,int ,int ,int ,int*) ;
 int strbuf_addf_ret (struct strbuf*,int,int ,int ,int ) ;
 int the_repository ;

__attribute__((used)) static int get_object(struct ref_array_item *ref, int deref, struct object **obj,
        struct expand_data *oi, struct strbuf *err)
{

 int eaten = 1;
 if (oi->info.contentp) {

  oi->info.sizep = &oi->size;
  oi->info.typep = &oi->type;
 }
 if (oid_object_info_extended(the_repository, &oi->oid, &oi->info,
         OBJECT_INFO_LOOKUP_REPLACE))
  return strbuf_addf_ret(err, -1, _("missing object %s for %s"),
           oid_to_hex(&oi->oid), ref->refname);
 if (oi->info.disk_sizep && oi->disk_size < 0)
  BUG("Object size is less than zero.");

 if (oi->info.contentp) {
  *obj = parse_object_buffer(the_repository, &oi->oid, oi->type, oi->size, oi->content, &eaten);
  if (!obj) {
   if (!eaten)
    free(oi->content);
   return strbuf_addf_ret(err, -1, _("parse_object_buffer failed on %s for %s"),
            oid_to_hex(&oi->oid), ref->refname);
  }
  grab_values(ref->value, deref, *obj, oi->content);
 }

 grab_common_values(ref->value, deref, oi);
 if (!eaten)
  free(oi->content);
 return 0;
}
