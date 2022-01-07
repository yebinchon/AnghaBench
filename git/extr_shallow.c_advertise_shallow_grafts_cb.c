
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_graft {int nr_parent; int oid; } ;


 int oid_to_hex (int *) ;
 int packet_write_fmt (int,char*,int ) ;

__attribute__((used)) static int advertise_shallow_grafts_cb(const struct commit_graft *graft, void *cb)
{
 int fd = *(int *)cb;
 if (graft->nr_parent == -1)
  packet_write_fmt(fd, "shallow %s\n", oid_to_hex(&graft->oid));
 return 0;
}
