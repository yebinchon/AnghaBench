
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct commit_graft {int nr_parent; int oid; } ;


 int oid_to_hex (int *) ;
 int packet_buf_write (struct strbuf*,char*,int ) ;

__attribute__((used)) static int advertise_shallow_grafts_cb(const struct commit_graft *graft, void *cb)
{
 struct strbuf *sb = cb;
 if (graft->nr_parent == -1)
  packet_buf_write(sb, "shallow %s\n", oid_to_hex(&graft->oid));
 return 0;
}
