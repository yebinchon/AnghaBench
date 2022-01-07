
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct object_id {int dummy; } ;


 scalar_t__ get_oid (int ,struct object_id*) ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 int oidclr (struct object_id*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;

__attribute__((used)) static int gitmodule_oid_from_commit(const struct object_id *treeish_name,
         struct object_id *gitmodules_oid,
         struct strbuf *rev)
{
 int ret = 0;

 if (is_null_oid(treeish_name)) {
  oidclr(gitmodules_oid);
  return 1;
 }

 strbuf_addf(rev, "%s:.gitmodules", oid_to_hex(treeish_name));
 if (get_oid(rev->buf, gitmodules_oid) >= 0)
  ret = 1;

 return ret;
}
