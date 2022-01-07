
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t len; int data; int type; } ;
typedef TYPE_1__ git_pkt_progress ;
typedef int git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,int,size_t) ;
 int GIT_PKT_PROGRESS ;
 TYPE_1__* git__malloc (size_t) ;
 int memcpy (int ,char const*,size_t) ;

__attribute__((used)) static int sideband_progress_pkt(git_pkt **out, const char *line, size_t len)
{
 git_pkt_progress *pkt;
 size_t alloclen;

 line++;
 len--;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, sizeof(git_pkt_progress), len);
 pkt = git__malloc(alloclen);
 GIT_ERROR_CHECK_ALLOC(pkt);

 pkt->type = GIT_PKT_PROGRESS;
 pkt->len = len;
 memcpy(pkt->data, line, len);

 *out = (git_pkt *) pkt;

 return 0;
}
