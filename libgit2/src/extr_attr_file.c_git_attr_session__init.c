
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int attr_session_key; } ;
typedef TYPE_1__ git_repository ;
struct TYPE_8__ {int key; } ;
typedef TYPE_2__ git_attr_session ;


 int assert (TYPE_1__*) ;
 int git_atomic_inc (int *) ;
 int memset (TYPE_2__*,int ,int) ;

int git_attr_session__init(git_attr_session *session, git_repository *repo)
{
 assert(repo);

 memset(session, 0, sizeof(*session));
 session->key = git_atomic_inc(&repo->attr_session_key);

 return 0;
}
