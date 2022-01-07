
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct git_pack_file {int pack_name; TYPE_1__ mwf; } ;


 int git_mwindow_free_all_locked (TYPE_1__*) ;
 int p_close (int) ;
 int p_unlink (int ) ;

void git_packfile_close(struct git_pack_file *p, bool unlink_packfile)
{
 if (p->mwf.fd >= 0) {
  git_mwindow_free_all_locked(&p->mwf);
  p_close(p->mwf.fd);
  p->mwf.fd = -1;
 }

 if (unlink_packfile)
  p_unlink(p->pack_name);
}
