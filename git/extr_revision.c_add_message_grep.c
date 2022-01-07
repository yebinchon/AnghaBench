
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;


 int GREP_PATTERN_BODY ;
 int add_grep (struct rev_info*,char const*,int ) ;

__attribute__((used)) static void add_message_grep(struct rev_info *revs, const char *pattern)
{
 add_grep(revs, pattern, GREP_PATTERN_BODY);
}
