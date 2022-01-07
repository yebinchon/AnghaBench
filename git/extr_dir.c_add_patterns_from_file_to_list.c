
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {int dummy; } ;
struct index_state {int dummy; } ;


 int add_patterns (char const*,char const*,int,struct pattern_list*,struct index_state*,int *) ;

int add_patterns_from_file_to_list(const char *fname, const char *base,
       int baselen, struct pattern_list *pl,
       struct index_state *istate)
{
 return add_patterns(fname, base, baselen, pl, istate, ((void*)0));
}
