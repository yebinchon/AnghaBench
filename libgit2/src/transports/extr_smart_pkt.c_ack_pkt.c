
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int status; int oid; int type; } ;
typedef TYPE_1__ git_pkt_ack ;
typedef int git_pkt ;


 int GIT_ACK_COMMON ;
 int GIT_ACK_CONTINUE ;
 int GIT_ACK_READY ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_NET ;
 size_t GIT_OID_HEXSZ ;
 int GIT_PKT_ACK ;
 TYPE_1__* git__calloc (int,int) ;
 int git__free (TYPE_1__*) ;
 scalar_t__ git__prefixncmp (char const*,size_t,char*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static int ack_pkt(git_pkt **out, const char *line, size_t len)
{
 git_pkt_ack *pkt;

 pkt = git__calloc(1, sizeof(git_pkt_ack));
 GIT_ERROR_CHECK_ALLOC(pkt);
 pkt->type = GIT_PKT_ACK;

 if (git__prefixncmp(line, len, "ACK "))
  goto out_err;
 line += 4;
 len -= 4;

 if (len < GIT_OID_HEXSZ || git_oid_fromstr(&pkt->oid, line) < 0)
  goto out_err;
 line += GIT_OID_HEXSZ;
 len -= GIT_OID_HEXSZ;

 if (len && line[0] == ' ') {
  line++;
  len--;

  if (!git__prefixncmp(line, len, "continue"))
   pkt->status = GIT_ACK_CONTINUE;
  else if (!git__prefixncmp(line, len, "common"))
   pkt->status = GIT_ACK_COMMON;
  else if (!git__prefixncmp(line, len, "ready"))
   pkt->status = GIT_ACK_READY;
  else
   goto out_err;
 }

 *out = (git_pkt *) pkt;

 return 0;

out_err:
 git_error_set(GIT_ERROR_NET, "error parsing ACK pkt-line");
 git__free(pkt);
 return -1;
}
