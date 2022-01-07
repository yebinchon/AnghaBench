
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct notes_merge_pair {int obj; int remote; int local; int base; } ;
struct notes_merge_options {TYPE_1__* repo; int remote_ref; int local_ref; } ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ mmfile_t ;
struct TYPE_11__ {int ptr; int size; } ;
typedef TYPE_3__ mmbuffer_t ;
struct TYPE_9__ {int index; } ;


 int die (char*) ;
 int free (int ) ;
 int ll_merge (TYPE_3__*,int ,TYPE_2__*,int *,TYPE_2__*,int ,TYPE_2__*,int ,int ,int *) ;
 int oid_to_hex (int *) ;
 int read_mmblob (TYPE_2__*,int *) ;
 int write_buf_to_worktree (int *,int ,int ) ;

__attribute__((used)) static int ll_merge_in_worktree(struct notes_merge_options *o,
    struct notes_merge_pair *p)
{
 mmbuffer_t result_buf;
 mmfile_t base, local, remote;
 int status;

 read_mmblob(&base, &p->base);
 read_mmblob(&local, &p->local);
 read_mmblob(&remote, &p->remote);

 status = ll_merge(&result_buf, oid_to_hex(&p->obj), &base, ((void*)0),
     &local, o->local_ref, &remote, o->remote_ref,
     o->repo->index, ((void*)0));

 free(base.ptr);
 free(local.ptr);
 free(remote.ptr);

 if ((status < 0) || !result_buf.ptr)
  die("Failed to execute internal merge");

 write_buf_to_worktree(&p->obj, result_buf.ptr, result_buf.size);
 free(result_buf.ptr);

 return status;
}
