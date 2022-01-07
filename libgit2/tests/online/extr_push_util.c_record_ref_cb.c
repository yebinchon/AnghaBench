
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_vector ;
typedef int git_remote_head ;


 int git_vector_insert (int *,int *) ;

int record_ref_cb(git_remote_head *head, void *payload)
{
 git_vector *refs = (git_vector *) payload;
 return git_vector_insert(refs, head);
}
