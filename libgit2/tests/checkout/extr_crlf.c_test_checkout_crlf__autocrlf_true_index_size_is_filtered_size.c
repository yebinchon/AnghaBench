
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int file_size; } ;
typedef TYPE_1__ git_index_entry ;
typedef int git_index ;
struct TYPE_7__ {int checkout_strategy; } ;
typedef TYPE_2__ git_checkout_options ;


 int ALL_CRLF_TEXT_RAW ;
 int ALL_LF_TEXT_AS_CRLF ;
 int GIT_CHECKOUT_FORCE ;
 TYPE_2__ GIT_CHECKOUT_OPTIONS_INIT ;
 int cl_assert (int ) ;
 int cl_assert_equal_sz (int ,int ) ;
 int cl_repo_set_bool (int ,char*,int) ;
 int g_repo ;
 int git_checkout_head (int ,TYPE_2__*) ;
 int git_index_free (int *) ;
 TYPE_1__* git_index_get_bypath (int *,char*,int ) ;
 int git_repository_index (int **,int ) ;
 int strlen (int ) ;
 int tick_index (int *) ;

void test_checkout_crlf__autocrlf_true_index_size_is_filtered_size(void)
{
 git_index *index;
 const git_index_entry *entry;
 git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
 opts.checkout_strategy = GIT_CHECKOUT_FORCE;

 cl_repo_set_bool(g_repo, "core.autocrlf", 1);

 git_repository_index(&index, g_repo);
 tick_index(index);

 git_checkout_head(g_repo, &opts);

 cl_assert((entry = git_index_get_bypath(index, "all-lf", 0)) != ((void*)0));

 cl_assert_equal_sz(strlen(ALL_LF_TEXT_AS_CRLF), entry->file_size);

 cl_assert((entry = git_index_get_bypath(index, "all-crlf", 0)) != ((void*)0));
 cl_assert_equal_sz(strlen(ALL_CRLF_TEXT_RAW), entry->file_size);

 git_index_free(index);
}
