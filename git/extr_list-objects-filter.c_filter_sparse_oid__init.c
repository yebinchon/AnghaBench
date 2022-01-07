
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object_context {int dummy; } ;
struct list_objects_filter_options {int sparse_oid_name; } ;
struct filter_sparse_data {int nr; TYPE_1__* array_frame; int alloc; int pl; } ;
struct filter {int free_fn; int filter_object_fn; struct filter_sparse_data* filter_data; } ;
struct TYPE_2__ {scalar_t__ child_prov_omit; scalar_t__ default_match; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 int GET_OID_BLOB ;
 int _ (char*) ;
 scalar_t__ add_patterns_from_blob_to_list (struct object_id*,char*,int ,int *) ;
 int die (int ,int ) ;
 int filter_sparse ;
 int filter_sparse_free ;
 scalar_t__ get_oid_with_context (int ,int ,int ,struct object_id*,struct object_context*) ;
 int oid_to_hex (struct object_id*) ;
 int the_repository ;
 struct filter_sparse_data* xcalloc (int,int) ;

__attribute__((used)) static void filter_sparse_oid__init(
 struct list_objects_filter_options *filter_options,
 struct filter *filter)
{
 struct filter_sparse_data *d = xcalloc(1, sizeof(*d));
 struct object_context oc;
 struct object_id sparse_oid;

 if (get_oid_with_context(the_repository,
     filter_options->sparse_oid_name,
     GET_OID_BLOB, &sparse_oid, &oc))
  die(_("unable to access sparse blob in '%s'"),
      filter_options->sparse_oid_name);
 if (add_patterns_from_blob_to_list(&sparse_oid, "", 0, &d->pl) < 0)
  die(_("unable to parse sparse filter data in %s"),
      oid_to_hex(&sparse_oid));

 ALLOC_GROW(d->array_frame, d->nr + 1, d->alloc);
 d->array_frame[d->nr].default_match = 0;
 d->array_frame[d->nr].child_prov_omit = 0;
 d->nr++;

 filter->filter_data = d;
 filter->filter_object_fn = filter_sparse;
 filter->free_fn = filter_sparse_free;
}
