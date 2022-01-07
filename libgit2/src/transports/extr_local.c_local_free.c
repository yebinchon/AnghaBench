
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ transport_local ;
typedef int git_transport ;


 int free_heads (int *) ;
 int git__free (TYPE_1__*) ;
 int local_close (int *) ;

__attribute__((used)) static void local_free(git_transport *transport)
{
 transport_local *t = (transport_local *)transport;

 free_heads(&t->refs);


 local_close(transport);


 git__free(t);
}
