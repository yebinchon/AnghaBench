
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct packed_git {int hash; } ;


 struct strbuf STRBUF_INIT ;
 struct packed_git** all_packs ;
 int odb_pack_name (struct strbuf*,int ,char*) ;
 int pack_id ;
 int strbuf_release (struct strbuf*) ;
 int unlink_or_warn (int ) ;

__attribute__((used)) static void unkeep_all_packs(void)
{
 struct strbuf name = STRBUF_INIT;
 int k;

 for (k = 0; k < pack_id; k++) {
  struct packed_git *p = all_packs[k];
  odb_pack_name(&name, p->hash, "keep");
  unlink_or_warn(name.buf);
 }
 strbuf_release(&name);
}
