
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct transport {int url; struct bundle_transport_data* data; } ;
struct ref_list_entry {int oid; int name; } ;
struct ref {struct ref* next; int old_oid; } ;
struct TYPE_3__ {int nr; struct ref_list_entry* list; } ;
struct TYPE_4__ {TYPE_1__ references; } ;
struct bundle_transport_data {int get_refs_from_bundle_called; scalar_t__ fd; TYPE_2__ header; } ;
struct argv_array {int dummy; } ;


 int _ (char*) ;
 struct ref* alloc_ref (int ) ;
 int close (scalar_t__) ;
 int die (int ,int ) ;
 int oidcpy (int *,int *) ;
 scalar_t__ read_bundle_header (int ,TYPE_2__*) ;

__attribute__((used)) static struct ref *get_refs_from_bundle(struct transport *transport,
     int for_push,
     const struct argv_array *ref_prefixes)
{
 struct bundle_transport_data *data = transport->data;
 struct ref *result = ((void*)0);
 int i;

 if (for_push)
  return ((void*)0);

 data->get_refs_from_bundle_called = 1;

 if (data->fd > 0)
  close(data->fd);
 data->fd = read_bundle_header(transport->url, &data->header);
 if (data->fd < 0)
  die(_("could not read bundle '%s'"), transport->url);
 for (i = 0; i < data->header.references.nr; i++) {
  struct ref_list_entry *e = data->header.references.list + i;
  struct ref *ref = alloc_ref(e->name);
  oidcpy(&ref->old_oid, &e->oid);
  ref->next = result;
  result = ref;
 }
 return result;
}
