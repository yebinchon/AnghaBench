
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* msg; int committer; } ;
typedef TYPE_1__ git_reflog_entry ;


 int git__free (TYPE_1__*) ;
 int git_signature_free (int ) ;

void git_reflog_entry__free(git_reflog_entry *entry)
{
 git_signature_free(entry->committer);

 git__free(entry->msg);
 git__free(entry);
}
