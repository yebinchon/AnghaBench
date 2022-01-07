
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int grep_filter; } ;
typedef enum grep_header_field { ____Placeholder_grep_header_field } grep_header_field ;


 int append_header_grep_pattern (int *,int,char const*) ;

__attribute__((used)) static void add_header_grep(struct rev_info *revs, enum grep_header_field field, const char *pattern)
{
 append_header_grep_pattern(&revs->grep_filter, field, pattern);
}
