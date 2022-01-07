
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct write_shallow_data {int flags; int out; scalar_t__ use_pack_protocol; int count; } ;
struct commit_graft {int nr_parent; int oid; } ;
struct TYPE_2__ {int flags; int oid; } ;
struct commit {TYPE_1__ object; } ;


 int QUICK ;
 int SEEN ;
 int SEEN_ONLY ;
 int VERBOSE ;
 int has_object_file (int *) ;
 struct commit* lookup_commit (int ,int *) ;
 char* oid_to_hex (int *) ;
 int packet_buf_write (int ,char*,char const*) ;
 int printf (char*,char*) ;
 int strbuf_addch (int ,char) ;
 int strbuf_addstr (int ,char const*) ;
 int the_repository ;

__attribute__((used)) static int write_one_shallow(const struct commit_graft *graft, void *cb_data)
{
 struct write_shallow_data *data = cb_data;
 const char *hex = oid_to_hex(&graft->oid);
 if (graft->nr_parent != -1)
  return 0;
 if (data->flags & QUICK) {
  if (!has_object_file(&graft->oid))
   return 0;
 } else if (data->flags & SEEN_ONLY) {
  struct commit *c = lookup_commit(the_repository, &graft->oid);
  if (!c || !(c->object.flags & SEEN)) {
   if (data->flags & VERBOSE)
    printf("Removing %s from .git/shallow\n",
           oid_to_hex(&c->object.oid));
   return 0;
  }
 }
 data->count++;
 if (data->use_pack_protocol)
  packet_buf_write(data->out, "shallow %s", hex);
 else {
  strbuf_addstr(data->out, hex);
  strbuf_addch(data->out, '\n');
 }
 return 0;
}
