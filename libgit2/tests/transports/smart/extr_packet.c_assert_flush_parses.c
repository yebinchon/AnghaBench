
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ git_pkt ;


 int GIT_PKT_FLUSH ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_strn (char const*,char const*,size_t) ;
 int cl_git_pass (int ) ;
 int git_pkt_free (TYPE_1__*) ;
 int git_pkt_parse_line (TYPE_1__**,char const**,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static void assert_flush_parses(const char *line)
{
 size_t linelen = strlen(line) + 1;
 const char *endptr;
 git_pkt *pkt;

 cl_git_pass(git_pkt_parse_line((git_pkt **) &pkt, &endptr, line, linelen));
 cl_assert_equal_i(pkt->type, GIT_PKT_FLUSH);
 cl_assert_equal_strn(endptr, line + 4, linelen - 4);

 git_pkt_free((git_pkt *) pkt);
}
