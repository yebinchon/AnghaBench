
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ref {struct ref* next; int old_oid; } ;
struct discovery {char* buf; int len; } ;
struct TYPE_4__ {int hexsz; } ;
struct TYPE_3__ {int buf; } ;


 int _ (char*) ;
 struct ref* alloc_ref (char*) ;
 int die (int ,int ) ;
 int free (struct ref*) ;
 int get_oid_hex (char*,int *) ;
 int http_fetch_ref (int ,struct ref*) ;
 int resolve_remote_symref (struct ref*,struct ref*) ;
 TYPE_2__* the_hash_algo ;
 int transport_anonymize_url (int ) ;
 TYPE_1__ url ;

__attribute__((used)) static struct ref *parse_info_refs(struct discovery *heads)
{
 char *data, *start, *mid;
 char *ref_name;
 int i = 0;

 struct ref *refs = ((void*)0);
 struct ref *ref = ((void*)0);
 struct ref *last_ref = ((void*)0);

 data = heads->buf;
 start = ((void*)0);
 mid = data;
 while (i < heads->len) {
  if (!start) {
   start = &data[i];
  }
  if (data[i] == '\t')
   mid = &data[i];
  if (data[i] == '\n') {
   if (mid - start != the_hash_algo->hexsz)
    die(_("%sinfo/refs not valid: is this a git repository?"),
        transport_anonymize_url(url.buf));
   data[i] = 0;
   ref_name = mid + 1;
   ref = alloc_ref(ref_name);
   get_oid_hex(start, &ref->old_oid);
   if (!refs)
    refs = ref;
   if (last_ref)
    last_ref->next = ref;
   last_ref = ref;
   start = ((void*)0);
  }
  i++;
 }

 ref = alloc_ref("HEAD");
 if (!http_fetch_ref(url.buf, ref) &&
     !resolve_remote_symref(ref, refs)) {
  ref->next = refs;
  refs = ref;
 } else {
  free(ref);
 }

 return refs;
}
