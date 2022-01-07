
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int boundary; int final_signature; int orig_signature; int orig_commit_id; int final_commit_id; } ;
typedef TYPE_2__ git_blame_hunk ;
struct TYPE_11__ {scalar_t__ is_boundary; TYPE_1__* suspect; scalar_t__ s_lno; int num_lines; scalar_t__ lno; } ;
typedef TYPE_3__ git_blame__entry ;
struct TYPE_12__ {int mailmap; } ;
typedef TYPE_4__ git_blame ;
struct TYPE_9__ {int commit; int path; } ;


 int git_commit_author_with_mailmap (int *,int ,int ) ;
 int git_commit_id (int ) ;
 int git_oid_cpy (int *,int ) ;
 int git_signature_dup (int *,int ) ;
 TYPE_2__* new_hunk (scalar_t__,int ,scalar_t__,int ) ;

__attribute__((used)) static git_blame_hunk* hunk_from_entry(git_blame__entry *e, git_blame *blame)
{
 git_blame_hunk *h = new_hunk(
   e->lno+1, e->num_lines, e->s_lno+1, e->suspect->path);

 if (!h)
  return ((void*)0);

 git_oid_cpy(&h->final_commit_id, git_commit_id(e->suspect->commit));
 git_oid_cpy(&h->orig_commit_id, git_commit_id(e->suspect->commit));
 git_commit_author_with_mailmap(
  &h->final_signature, e->suspect->commit, blame->mailmap);
 git_signature_dup(&h->orig_signature, h->final_signature);
 h->boundary = e->is_boundary ? 1 : 0;
 return h;
}
