
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct write_shallow_data {int use_pack_protocol; int count; unsigned int flags; struct strbuf* out; } ;
struct strbuf {int dummy; } ;
struct oid_array {int nr; scalar_t__ oid; } ;


 int for_each_commit_graft (int ,struct write_shallow_data*) ;
 int oid_to_hex (scalar_t__) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int write_one_shallow ;

__attribute__((used)) static int write_shallow_commits_1(struct strbuf *out, int use_pack_protocol,
       const struct oid_array *extra,
       unsigned flags)
{
 struct write_shallow_data data;
 int i;
 data.out = out;
 data.use_pack_protocol = use_pack_protocol;
 data.count = 0;
 data.flags = flags;
 for_each_commit_graft(write_one_shallow, &data);
 if (!extra)
  return data.count;
 for (i = 0; i < extra->nr; i++) {
  strbuf_addstr(out, oid_to_hex(extra->oid + i));
  strbuf_addch(out, '\n');
  data.count++;
 }
 return data.count;
}
