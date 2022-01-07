
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * repo; void* cb_data; scalar_t__ cb; } ;
typedef TYPE_1__ tag_cb_data ;
typedef scalar_t__ git_tag_foreach_cb ;
typedef int git_repository ;


 int assert (int) ;
 int git_reference_foreach_name (int *,int *,TYPE_1__*) ;
 int tags_cb ;

int git_tag_foreach(git_repository *repo, git_tag_foreach_cb cb, void *cb_data)
{
 tag_cb_data data;

 assert(repo && cb);

 data.cb = cb;
 data.cb_data = cb_data;
 data.repo = repo;

 return git_reference_foreach_name(repo, &tags_cb, &data);
}
