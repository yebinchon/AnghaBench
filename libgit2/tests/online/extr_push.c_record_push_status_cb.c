
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int statuses; } ;
typedef TYPE_1__ record_callbacks_data ;
struct TYPE_8__ {struct TYPE_8__* msg; int success; struct TYPE_8__* ref; } ;
typedef TYPE_2__ push_status ;


 int cl_assert (TYPE_2__*) ;
 TYPE_2__* git__calloc (int,int) ;
 TYPE_2__* git__strdup (char const*) ;
 int git_vector_insert (int *,TYPE_2__*) ;

__attribute__((used)) static int record_push_status_cb(const char *ref, const char *msg, void *payload)
{
 record_callbacks_data *data = (record_callbacks_data *) payload;
 push_status *s;

 cl_assert(s = git__calloc(1, sizeof(*s)));
 if (ref)
  cl_assert(s->ref = git__strdup(ref));
 s->success = (msg == ((void*)0));
 if (msg)
  cl_assert(s->msg = git__strdup(msg));

 git_vector_insert(&data->statuses, s);

 return 0;
}
