
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct oid_array {int dummy; } ;


 int write_shallow_commits_1 (struct strbuf*,int,struct oid_array const*,int ) ;

int write_shallow_commits(struct strbuf *out, int use_pack_protocol,
     const struct oid_array *extra)
{
 return write_shallow_commits_1(out, use_pack_protocol, extra, 0);
}
