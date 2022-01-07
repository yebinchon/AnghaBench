
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int oid; int type; } ;
typedef TYPE_1__ git_pkt_ack ;
typedef int git_pkt ;
typedef int git_oid ;
typedef enum git_ack_status { ____Placeholder_git_ack_status } git_ack_status ;


 int GIT_PKT_ACK ;
 int cl_assert_equal_i (int ,int) ;
 int cl_assert_equal_oid (int *,int *) ;
 int cl_git_pass (int ) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_ack_parses(const char *line, const char *expected_oid, enum git_ack_status expected_status)
{
 size_t linelen = strlen(line) + 1;
 const char *endptr;
 git_pkt_ack *pkt;
 git_oid oid;

 cl_git_pass(git_oid_fromstr(&oid, expected_oid));

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_ACK);
 cl_assert_equal_oid(&pkt->oid, &oid);
 cl_assert_equal_i(pkt->status, expected_status);

 git_pkt_free((git_pkt *) pkt);
}
