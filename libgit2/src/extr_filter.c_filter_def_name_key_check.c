
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filter_name; } ;
typedef TYPE_1__ git_filter_def ;


 int git__strcmp (void const*,char const*) ;

__attribute__((used)) static int filter_def_name_key_check(const void *key, const void *fdef)
{
 const char *name =
  fdef ? ((const git_filter_def *)fdef)->filter_name : ((void*)0);
 return name ? git__strcmp(key, name) : -1;
}
