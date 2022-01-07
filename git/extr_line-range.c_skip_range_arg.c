
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 char* parse_loc (char const*,int *,int *,int ,int,int *) ;
 char const* parse_range_funcname (char const*,int *,int *,int ,int ,int *,int *,int *,struct index_state*) ;

const char *skip_range_arg(const char *arg, struct index_state *istate)
{
 if (*arg == ':' || (*arg == '^' && *(arg + 1) == ':'))
  return parse_range_funcname(arg, ((void*)0), ((void*)0),
         0, 0, ((void*)0), ((void*)0),
         ((void*)0), istate);

 arg = parse_loc(arg, ((void*)0), ((void*)0), 0, -1, ((void*)0));

 if (*arg == ',')
  arg = parse_loc(arg+1, ((void*)0), ((void*)0), 0, 0, ((void*)0));

 return arg;
}
