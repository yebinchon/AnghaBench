
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct repository {int dummy; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 int do_plain_rerere (struct repository*,struct string_list*,int) ;
 int free_rerere_dirs () ;
 int setup_rerere (struct repository*,struct string_list*,int) ;

int repo_rerere(struct repository *r, int flags)
{
 struct string_list merge_rr = STRING_LIST_INIT_DUP;
 int fd, status;

 fd = setup_rerere(r, &merge_rr, flags);
 if (fd < 0)
  return 0;
 status = do_plain_rerere(r, &merge_rr, fd);
 free_rerere_dirs();
 return status;
}
