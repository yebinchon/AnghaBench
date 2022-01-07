
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int common; int buffer; } ;
typedef TYPE_1__ transport_smart ;
typedef int gitno_buffer ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_2__ git_pkt ;


 scalar_t__ GIT_PKT_ACK ;
 int git__free (TYPE_2__*) ;
 scalar_t__ git_vector_insert (int *,TYPE_2__*) ;
 int recv_pkt (TYPE_2__**,int *,int *) ;

__attribute__((used)) static int store_common(transport_smart *t)
{
 git_pkt *pkt = ((void*)0);
 gitno_buffer *buf = &t->buffer;
 int error;

 do {
  if ((error = recv_pkt(&pkt, ((void*)0), buf)) < 0)
   return error;

  if (pkt->type != GIT_PKT_ACK) {
   git__free(pkt);
   return 0;
  }

  if (git_vector_insert(&t->common, pkt) < 0) {
   git__free(pkt);
   return -1;
  }
 } while (1);

 return 0;
}
