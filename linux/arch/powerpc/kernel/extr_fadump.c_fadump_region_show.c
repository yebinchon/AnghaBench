
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; int fadump_enabled; } ;
struct TYPE_4__ {int (* fadump_region_show ) (TYPE_2__*,struct seq_file*) ;} ;


 int fadump_mutex ;
 TYPE_2__ fw_dump ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_2__*,struct seq_file*) ;

__attribute__((used)) static int fadump_region_show(struct seq_file *m, void *private)
{
 if (!fw_dump.fadump_enabled)
  return 0;

 mutex_lock(&fadump_mutex);
 fw_dump.ops->fadump_region_show(&fw_dump, m);
 mutex_unlock(&fadump_mutex);
 return 0;
}
