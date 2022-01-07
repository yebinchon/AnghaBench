
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct oidset_iter {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 int oid_to_hex (struct object_id const*) ;
 int oidset_iter_init (struct oidset*,struct oidset_iter*) ;
 struct object_id* oidset_iter_next (struct oidset_iter*) ;
 int packet_buf_write (struct strbuf*,char*,int ) ;

__attribute__((used)) static void add_common(struct strbuf *req_buf, struct oidset *common)
{
 struct oidset_iter iter;
 const struct object_id *oid;
 oidset_iter_init(common, &iter);

 while ((oid = oidset_iter_next(&iter))) {
  packet_buf_write(req_buf, "have %s\n", oid_to_hex(oid));
 }
}
