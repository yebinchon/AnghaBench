
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dst; } ;
struct TYPE_11__ {TYPE_1__ refspec; int loid; } ;
typedef TYPE_3__ push_spec ;
typedef int git_vector ;
struct TYPE_10__ {int name; int oid; } ;
struct TYPE_12__ {TYPE_2__ head; int type; } ;
typedef TYPE_4__ git_pkt_ref ;
typedef int git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_4__*) ;
 int GIT_PKT_REF ;
 TYPE_4__* git__calloc (int,int) ;
 int git__strdup (int ) ;
 int git_oid_cpy (int *,int *) ;
 int git_pkt_free (int *) ;
 scalar_t__ git_vector_insert (int *,TYPE_4__*) ;

__attribute__((used)) static int add_ref_from_push_spec(git_vector *refs, push_spec *push_spec)
{
 git_pkt_ref *added = git__calloc(1, sizeof(git_pkt_ref));
 GIT_ERROR_CHECK_ALLOC(added);

 added->type = GIT_PKT_REF;
 git_oid_cpy(&added->head.oid, &push_spec->loid);
 added->head.name = git__strdup(push_spec->refspec.dst);

 if (!added->head.name ||
  git_vector_insert(refs, added) < 0) {
  git_pkt_free((git_pkt *)added);
  return -1;
 }

 return 0;
}
