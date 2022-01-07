
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int new_oid; int old_oid; struct TYPE_7__* name; } ;
typedef TYPE_1__ updated_tip ;
struct TYPE_8__ {int updated_tips; } ;
typedef TYPE_2__ record_callbacks_data ;
typedef int git_oid ;


 int cl_assert (TYPE_1__*) ;
 TYPE_1__* git__calloc (int,int) ;
 TYPE_1__* git__strdup (char const*) ;
 int git_oid_cpy (int *,int const*) ;
 int git_vector_insert (int *,TYPE_1__*) ;

int record_update_tips_cb(const char *refname, const git_oid *a, const git_oid *b, void *data)
{
 updated_tip *t;
 record_callbacks_data *record_data = (record_callbacks_data *)data;

 cl_assert(t = git__calloc(1, sizeof(*t)));

 cl_assert(t->name = git__strdup(refname));
 git_oid_cpy(&t->old_oid, a);
 git_oid_cpy(&t->new_oid, b);

 git_vector_insert(&record_data->updated_tips, t);

 return 0;
}
