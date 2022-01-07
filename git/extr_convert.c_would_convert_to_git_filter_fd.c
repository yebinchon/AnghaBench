
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct conv_attrs {TYPE_1__* drv; } ;
struct TYPE_2__ {int required; } ;


 int CAP_CLEAN ;
 int apply_filter (char const*,int *,int ,int,int *,TYPE_1__*,int ,int *) ;
 int convert_attrs (struct index_state const*,struct conv_attrs*,char const*) ;

int would_convert_to_git_filter_fd(const struct index_state *istate, const char *path)
{
 struct conv_attrs ca;

 convert_attrs(istate, &ca, path);
 if (!ca.drv)
  return 0;






 if (!ca.drv->required)
  return 0;

 return apply_filter(path, ((void*)0), 0, -1, ((void*)0), ca.drv, CAP_CLEAN, ((void*)0));
}
