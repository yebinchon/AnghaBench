
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; char* error; int type; } ;
typedef TYPE_1__ git_pkt_err ;
typedef int git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_PKT_ERR ;
 TYPE_1__* git__malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int sideband_error_pkt(git_pkt **out, const char *line, size_t len)
{
 git_pkt_err *pkt;
 size_t alloc_len;

 line++;
 len--;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, sizeof(git_pkt_err), len);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_len, alloc_len, 1);
 pkt = git__malloc(alloc_len);
 GIT_ERROR_CHECK_ALLOC(pkt);

 pkt->type = GIT_PKT_ERR;
 pkt->len = (int)len;
 memcpy(pkt->error, line, len);
 pkt->error[len] = '\0';

 *out = (git_pkt *)pkt;

 return 0;
}
