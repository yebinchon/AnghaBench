
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ref; int type; } ;
typedef TYPE_1__ git_pkt_ok ;
typedef int git_pkt ;


 int GIT_PKT_OK ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_strn (int ,char const*,int) ;
 int cl_git_pass (int ) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_ok_parses(const char *line, const char *expected_ref)
{
 size_t linelen = strlen(line) + 1;
 const char *endptr;
 git_pkt_ok *pkt;

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_OK);
 cl_assert_equal_strn(pkt->ref, expected_ref, strlen(expected_ref));

 git_pkt_free((git_pkt *) pkt);
}
