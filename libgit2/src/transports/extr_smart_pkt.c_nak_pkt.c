
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_PKT_NAK ;
 TYPE_1__* git__malloc (int) ;

__attribute__((used)) static int nak_pkt(git_pkt **out)
{
 git_pkt *pkt;

 pkt = git__malloc(sizeof(git_pkt));
 GIT_ERROR_CHECK_ALLOC(pkt);

 pkt->type = GIT_PKT_NAK;
 *out = pkt;

 return 0;
}
