
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ have_repository; } ;


 int REF_ISSYMREF ;
 int alias_all_urls () ;
 int * current_branch ;
 int git_config (int ,int *) ;
 int handle_config ;
 int * make_branch (char const*,int ) ;
 char* resolve_ref_unsafe (char*,int ,int *,int*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 TYPE_1__* startup_info ;

__attribute__((used)) static void read_config(void)
{
 static int loaded;
 int flag;

 if (loaded)
  return;
 loaded = 1;

 current_branch = ((void*)0);
 if (startup_info->have_repository) {
  const char *head_ref = resolve_ref_unsafe("HEAD", 0, ((void*)0), &flag);
  if (head_ref && (flag & REF_ISSYMREF) &&
      skip_prefix(head_ref, "refs/heads/", &head_ref)) {
   current_branch = make_branch(head_ref, 0);
  }
 }
 git_config(handle_config, ((void*)0));
 alias_all_urls();
}
