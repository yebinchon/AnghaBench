
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct string_entry {char const* string; TYPE_2__ entry; } ;
struct strbuf {char* buf; } ;
struct object_id {int dummy; } ;
struct labels_entry {char const* string; TYPE_2__ entry; } ;
struct label_state {int commit2label; int labels; struct strbuf buf; } ;
struct TYPE_4__ {size_t hexsz; } ;


 int FLEX_ALLOC_STR (struct string_entry*,char const*,char const*) ;
 int GIT_MAX_HEXSZ ;
 int default_abbrev ;
 int find_unique_abbrev_r (char*,struct object_id*,int ) ;
 int get_oid_hex (char const*,struct object_id*) ;
 int hashmap_add (int *,TYPE_2__*) ;
 int hashmap_entry_init (TYPE_2__*,int ) ;
 scalar_t__ hashmap_get_from_hash (int *,int ,char const*) ;
 int oid_to_hex_r (char*,struct object_id*) ;
 int oidcpy (int *,struct object_id*) ;
 struct string_entry* oidmap_get (int *,struct object_id*) ;
 int oidmap_put (int *,struct string_entry*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addf (struct strbuf*,char*,int) ;
 int strbuf_grow (struct strbuf*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strihash (char const*) ;
 char const* string ;
 int strlen (char const*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static const char *label_oid(struct object_id *oid, const char *label,
        struct label_state *state)
{
 struct labels_entry *labels_entry;
 struct string_entry *string_entry;
 struct object_id dummy;
 size_t len;
 int i;

 string_entry = oidmap_get(&state->commit2label, oid);
 if (string_entry)
  return string_entry->string;
 if (!label) {
  char *p;

  strbuf_reset(&state->buf);
  strbuf_grow(&state->buf, GIT_MAX_HEXSZ);
  label = p = state->buf.buf;

  find_unique_abbrev_r(p, oid, default_abbrev);





  if (hashmap_get_from_hash(&state->labels, strihash(p), p)) {
   size_t i = strlen(p) + 1;

   oid_to_hex_r(p, oid);
   for (; i < the_hash_algo->hexsz; i++) {
    char save = p[i];
    p[i] = '\0';
    if (!hashmap_get_from_hash(&state->labels,
          strihash(p), p))
     break;
    p[i] = save;
   }
  }
 } else if (((len = strlen(label)) == the_hash_algo->hexsz &&
      !get_oid_hex(label, &dummy)) ||
     (len == 1 && *label == '#') ||
     hashmap_get_from_hash(&state->labels,
      strihash(label), label)) {






  struct strbuf *buf = &state->buf;

  strbuf_reset(buf);
  strbuf_add(buf, label, len);

  for (i = 2; ; i++) {
   strbuf_setlen(buf, len);
   strbuf_addf(buf, "-%d", i);
   if (!hashmap_get_from_hash(&state->labels,
         strihash(buf->buf),
         buf->buf))
    break;
  }

  label = buf->buf;
 }

 FLEX_ALLOC_STR(labels_entry, label, label);
 hashmap_entry_init(&labels_entry->entry, strihash(label));
 hashmap_add(&state->labels, &labels_entry->entry);

 FLEX_ALLOC_STR(string_entry, string, label);
 oidcpy(&string_entry->entry.oid, oid);
 oidmap_put(&state->commit2label, string_entry);

 return string_entry->string;
}
