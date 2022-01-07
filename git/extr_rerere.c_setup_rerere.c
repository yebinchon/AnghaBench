
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct repository {int dummy; } ;


 int LOCK_DIE_ON_ERROR ;
 int RERERE_AUTOUPDATE ;
 int RERERE_NOAUTOUPDATE ;
 int RERERE_READONLY ;
 int git_path_merge_rr (struct repository*) ;
 int git_rerere_config () ;
 int hold_lock_file_for_update (int *,int ,int ) ;
 int is_rerere_enabled () ;
 int read_rr (struct repository*,struct string_list*) ;
 int rerere_autoupdate ;
 int write_lock ;

int setup_rerere(struct repository *r, struct string_list *merge_rr, int flags)
{
 int fd;

 git_rerere_config();
 if (!is_rerere_enabled())
  return -1;

 if (flags & (RERERE_AUTOUPDATE|RERERE_NOAUTOUPDATE))
  rerere_autoupdate = !!(flags & RERERE_AUTOUPDATE);
 if (flags & RERERE_READONLY)
  fd = 0;
 else
  fd = hold_lock_file_for_update(&write_lock,
            git_path_merge_rr(r),
            LOCK_DIE_ON_ERROR);
 read_rr(r, merge_rr);
 return fd;
}
