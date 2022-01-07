
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sign; int offset; int time; } ;
struct TYPE_9__ {TYPE_1__ when; struct TYPE_9__* email; struct TYPE_9__* name; } ;
typedef TYPE_2__ git_signature ;
typedef int git_pool ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 TYPE_2__* git_pool_mallocz (int *,int) ;
 void* git_pool_strdup (int *,TYPE_2__*) ;

int git_signature__pdup(git_signature **dest, const git_signature *source, git_pool *pool)
{
 git_signature *signature;

 if (source == ((void*)0))
  return 0;

 signature = git_pool_mallocz(pool, sizeof(git_signature));
 GIT_ERROR_CHECK_ALLOC(signature);

 signature->name = git_pool_strdup(pool, source->name);
 GIT_ERROR_CHECK_ALLOC(signature->name);

 signature->email = git_pool_strdup(pool, source->email);
 GIT_ERROR_CHECK_ALLOC(signature->email);

 signature->when.time = source->when.time;
 signature->when.offset = source->when.offset;
 signature->when.sign = source->when.sign;

 *dest = signature;

 return 0;
}
