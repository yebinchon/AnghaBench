
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct merge_options {int verbosity; TYPE_1__* priv; } ;
struct TYPE_2__ {int call_depth; } ;



__attribute__((used)) static int show(struct merge_options *opt, int v)
{
 return (!opt->priv->call_depth && opt->verbosity >= v) ||
  opt->verbosity >= 5;
}
