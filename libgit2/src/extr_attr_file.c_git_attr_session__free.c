
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tmp; int sysdir; } ;
typedef TYPE_1__ git_attr_session ;


 int git_buf_dispose (int *) ;
 int memset (TYPE_1__*,int ,int) ;

void git_attr_session__free(git_attr_session *session)
{
 if (!session)
  return;

 git_buf_dispose(&session->sysdir);
 git_buf_dispose(&session->tmp);

 memset(session, 0, sizeof(git_attr_session));
}
