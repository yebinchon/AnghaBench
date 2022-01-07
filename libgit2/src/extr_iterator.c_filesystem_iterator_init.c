
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int repo; } ;
struct TYPE_5__ {TYPE_2__ base; int ignores; } ;
typedef TYPE_1__ filesystem_iterator ;


 int GIT_ITERATOR_FIRST_ACCESS ;
 int filesystem_iterator_frame_push (TYPE_1__*,int *) ;
 int git_ignore__for_path (int ,char*,int *) ;
 scalar_t__ iterator__honor_ignores (TYPE_2__*) ;

__attribute__((used)) static int filesystem_iterator_init(filesystem_iterator *iter)
{
 int error;

 if (iterator__honor_ignores(&iter->base) &&
  (error = git_ignore__for_path(iter->base.repo,
   ".gitignore", &iter->ignores)) < 0)
  return error;

 if ((error = filesystem_iterator_frame_push(iter, ((void*)0))) < 0)
  return error;

 iter->base.flags &= ~GIT_ITERATOR_FIRST_ACCESS;

 return 0;
}
