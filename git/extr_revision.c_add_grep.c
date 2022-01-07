
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int grep_filter; } ;
typedef enum grep_pat_token { ____Placeholder_grep_pat_token } grep_pat_token ;


 int append_grep_pattern (int *,char const*,char*,int ,int) ;

__attribute__((used)) static void add_grep(struct rev_info *revs, const char *ptn, enum grep_pat_token what)
{
 append_grep_pattern(&revs->grep_filter, ptn, "command line", 0, what);
}
