
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buf; } ;
struct tempfile {TYPE_1__ filename; } ;
struct split_index {TYPE_2__* base; int base_oid; } ;
struct index_state {struct split_index* split_index; } ;
struct TYPE_4__ {int oid; } ;


 int _ (char*) ;
 int adjust_shared_perm (int ) ;
 int clean_shared_index_files (int ) ;
 int do_write_index (TYPE_2__*,struct tempfile*,int) ;
 int error (int ,int ) ;
 int get_tempfile_path (struct tempfile*) ;
 int git_path (char*,int ) ;
 int move_cache_to_base_index (struct index_state*) ;
 int oid_to_hex (int *) ;
 int oidcpy (int *,int *) ;
 int rename_tempfile (struct tempfile**,int ) ;
 int the_repository ;
 int trace2_region_enter_printf (char*,char*,int ,char*,int ) ;
 int trace2_region_leave_printf (char*,char*,int ,char*,int ) ;

__attribute__((used)) static int write_shared_index(struct index_state *istate,
         struct tempfile **temp)
{
 struct split_index *si = istate->split_index;
 int ret;

 move_cache_to_base_index(istate);

 trace2_region_enter_printf("index", "shared/do_write_index",
       the_repository, "%s", (*temp)->filename.buf);
 ret = do_write_index(si->base, *temp, 1);
 trace2_region_leave_printf("index", "shared/do_write_index",
       the_repository, "%s", (*temp)->filename.buf);

 if (ret)
  return ret;
 ret = adjust_shared_perm(get_tempfile_path(*temp));
 if (ret) {
  error(_("cannot fix permission bits on '%s'"), get_tempfile_path(*temp));
  return ret;
 }
 ret = rename_tempfile(temp,
         git_path("sharedindex.%s", oid_to_hex(&si->base->oid)));
 if (!ret) {
  oidcpy(&si->base_oid, &si->base->oid);
  clean_shared_index_files(oid_to_hex(&si->base->oid));
 }

 return ret;
}
