
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* body; struct TYPE_3__* summary; struct TYPE_3__* message_encoding; struct TYPE_3__* raw_message; struct TYPE_3__* raw_header; int committer; int author; int parent_ids; } ;
typedef TYPE_1__ git_commit ;


 int git__free (TYPE_1__*) ;
 int git_array_clear (int ) ;
 int git_signature_free (int ) ;

void git_commit__free(void *_commit)
{
 git_commit *commit = _commit;

 git_array_clear(commit->parent_ids);

 git_signature_free(commit->author);
 git_signature_free(commit->committer);

 git__free(commit->raw_header);
 git__free(commit->raw_message);
 git__free(commit->message_encoding);
 git__free(commit->summary);
 git__free(commit->body);

 git__free(commit);
}
