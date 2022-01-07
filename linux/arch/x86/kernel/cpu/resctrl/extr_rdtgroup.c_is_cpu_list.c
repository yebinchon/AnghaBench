
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rftype {int flags; } ;
struct kernfs_open_file {TYPE_1__* kn; } ;
struct TYPE_2__ {struct rftype* priv; } ;


 int RFTYPE_FLAGS_CPUS_LIST ;

__attribute__((used)) static bool is_cpu_list(struct kernfs_open_file *of)
{
 struct rftype *rft = of->kn->priv;

 return rft->flags & RFTYPE_FLAGS_CPUS_LIST;
}
