
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int unpack_ok; int type; } ;
typedef TYPE_1__ git_pkt_unpack ;
typedef int git_pkt ;


 int GIT_PKT_UNPACK ;
 int cl_assert_equal_i (int ,int) ;
 int cl_git_pass (int ) ;
 int git_pkt_free (int *) ;
 int git_pkt_parse_line (int **,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_unpack_parses(const char *line, bool ok)
{
 size_t linelen = strlen(line) + 1;
 const char *endptr;
 git_pkt_unpack *pkt;

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_UNPACK);
 cl_assert_equal_i(pkt->unpack_ok, ok);

 git_pkt_free((git_pkt *) pkt);
}
