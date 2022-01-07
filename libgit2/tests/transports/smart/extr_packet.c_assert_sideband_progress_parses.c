
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; int len; int type; } ;
typedef TYPE_1__ git_pkt_progress ;
typedef int git_pkt ;


 size_t GIT_PKT_PROGRESS ;
 int cl_assert_equal_i (int ,size_t) ;
 int cl_assert_equal_strn (int ,char const*,size_t) ;
 int cl_git_pass (int ) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_sideband_progress_parses(const char *line, const char *expected_data, size_t expected_len)
{
 size_t linelen = strlen(line) + 1;
 const char *endptr;
 git_pkt_progress *pkt;

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_PROGRESS);
 cl_assert_equal_i(pkt->len, expected_len);
 cl_assert_equal_strn(pkt->data, expected_data, expected_len);

 git_pkt_free((git_pkt *) pkt);
}
