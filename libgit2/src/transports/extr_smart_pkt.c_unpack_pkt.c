
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unpack_ok; int type; } ;
typedef TYPE_1__ git_pkt_unpack ;
typedef int git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_PKT_UNPACK ;
 TYPE_1__* git__malloc (int) ;
 int git__prefixncmp (char const*,size_t,char*) ;

__attribute__((used)) static int unpack_pkt(git_pkt **out, const char *line, size_t len)
{
 git_pkt_unpack *pkt;

 pkt = git__malloc(sizeof(*pkt));
 GIT_ERROR_CHECK_ALLOC(pkt);
 pkt->type = GIT_PKT_UNPACK;

 if (!git__prefixncmp(line, len, "unpack ok"))
  pkt->unpack_ok = 1;
 else
  pkt->unpack_ok = 0;

 *out = (git_pkt *)pkt;
 return 0;
}
