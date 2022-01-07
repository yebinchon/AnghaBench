
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_pkt ;


 int cl_git_fail (int ) ;
 int git_pkt_parse_line (int **,char const**,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void assert_pkt_fails(const char *line)
{
 const char *endptr;
 git_pkt *pkt;
 cl_git_fail(git_pkt_parse_line(&pkt, &endptr, line, strlen(line) + 1));
}
