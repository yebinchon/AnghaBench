
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository_format {int dummy; } ;
struct TYPE_2__ {int have_repository; } ;


 struct repository_format REPOSITORY_FORMAT_INIT ;
 int check_repository_format_gently (int ,struct repository_format*,int *) ;
 int clear_repository_format (struct repository_format*) ;
 int get_git_dir () ;
 TYPE_1__* startup_info ;

void check_repository_format(void)
{
 struct repository_format repo_fmt = REPOSITORY_FORMAT_INIT;
 check_repository_format_gently(get_git_dir(), &repo_fmt, ((void*)0));
 startup_info->have_repository = 1;
 clear_repository_format(&repo_fmt);
}
