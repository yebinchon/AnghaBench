
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* msg; struct TYPE_4__* ref; } ;
typedef TYPE_1__ push_status ;


 int git__free (TYPE_1__*) ;

void push_status_free(push_status *s)
{
 git__free(s->ref);
 git__free(s->msg);
 git__free(s);
}
