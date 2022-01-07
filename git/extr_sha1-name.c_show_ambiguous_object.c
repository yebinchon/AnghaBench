
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag {scalar_t__ tag; } ;
struct strbuf {int buf; } ;
struct TYPE_2__ {int type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int member_0; } ;
struct object_id {int dummy; } ;
struct disambiguate_state {int repo; int cb_data; int (* fn ) (int ,struct object_id const*,int ) ;} ;
struct commit {int dummy; } ;


 int DATE_SHORT ;
 int DEFAULT_ABBREV ;
 int OBJ_COMMIT ;
 int OBJ_TAG ;
 struct strbuf STRBUF_INIT ;
 int advise (char*,int ,char*,int ) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 struct commit* lookup_commit (int ,struct object_id const*) ;
 struct tag* lookup_tag (int ,struct object_id const*) ;
 int oid_object_info (int ,struct object_id const*,int *) ;
 int parse_tag (struct tag*) ;
 int repo_find_unique_abbrev (int ,struct object_id const*,int ) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__) ;
 int strbuf_release (struct strbuf*) ;
 int stub1 (int ,struct object_id const*,int ) ;
 char* type_name (int) ;

__attribute__((used)) static int show_ambiguous_object(const struct object_id *oid, void *data)
{
 const struct disambiguate_state *ds = data;
 struct strbuf desc = STRBUF_INIT;
 int type;

 if (ds->fn && !ds->fn(ds->repo, oid, ds->cb_data))
  return 0;

 type = oid_object_info(ds->repo, oid, ((void*)0));
 if (type == OBJ_COMMIT) {
  struct commit *commit = lookup_commit(ds->repo, oid);
  if (commit) {
   struct pretty_print_context pp = {0};
   pp.date_mode.type = DATE_SHORT;
   format_commit_message(commit, " %ad - %s", &desc, &pp);
  }
 } else if (type == OBJ_TAG) {
  struct tag *tag = lookup_tag(ds->repo, oid);
  if (!parse_tag(tag) && tag->tag)
   strbuf_addf(&desc, " %s", tag->tag);
 }

 advise("  %s %s%s",
        repo_find_unique_abbrev(ds->repo, oid, DEFAULT_ABBREV),
        type_name(type) ? type_name(type) : "unknown type",
        desc.buf);

 strbuf_release(&desc);
 return 0;
}
