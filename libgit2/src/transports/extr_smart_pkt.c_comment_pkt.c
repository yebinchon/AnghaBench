
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* comment; int type; } ;
typedef TYPE_1__ git_pkt_comment ;
typedef int git_pkt ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int GIT_PKT_COMMENT ;
 TYPE_1__* git__malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int comment_pkt(git_pkt **out, const char *line, size_t len)
{
 git_pkt_comment *pkt;
 size_t alloclen;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, sizeof(git_pkt_comment), len);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, 1);
 pkt = git__malloc(alloclen);
 GIT_ERROR_CHECK_ALLOC(pkt);

 pkt->type = GIT_PKT_COMMENT;
 memcpy(pkt->comment, line, len);
 pkt->comment[len] = '\0';

 *out = (git_pkt *) pkt;

 return 0;
}
