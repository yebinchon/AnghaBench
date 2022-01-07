
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gitno_buffer ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef TYPE_1__ git_pkt_ack ;
struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_2__ git_pkt ;


 scalar_t__ GIT_ACK_COMMON ;
 scalar_t__ GIT_ACK_CONTINUE ;
 scalar_t__ GIT_ACK_READY ;
 scalar_t__ GIT_PKT_ACK ;
 scalar_t__ GIT_PKT_NAK ;
 int git_pkt_free (TYPE_2__*) ;
 int recv_pkt (TYPE_2__**,int *,int *) ;

__attribute__((used)) static int wait_while_ack(gitno_buffer *buf)
{
 int error;
 git_pkt *pkt = ((void*)0);
 git_pkt_ack *ack = ((void*)0);

 while (1) {
  git_pkt_free(pkt);

  if ((error = recv_pkt(&pkt, ((void*)0), buf)) < 0)
   return error;

  if (pkt->type == GIT_PKT_NAK)
   break;
  if (pkt->type != GIT_PKT_ACK)
   continue;

  ack = (git_pkt_ack*)pkt;

  if (ack->status != GIT_ACK_CONTINUE &&
      ack->status != GIT_ACK_COMMON &&
      ack->status != GIT_ACK_READY) {
   break;
  }
 }

 git_pkt_free(pkt);
 return 0;
}
