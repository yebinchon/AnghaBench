
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int orig_index; } ;


 int index_name_pos (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int was_tracked(struct merge_options *opt, const char *path)
{
 int pos = index_name_pos(&opt->priv->orig_index, path, strlen(path));

 if (0 <= pos)

  return 1;

 return 0;
}
