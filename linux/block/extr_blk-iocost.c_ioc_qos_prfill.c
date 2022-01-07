
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct seq_file {int dummy; } ;
struct TYPE_3__ {int* qos; } ;
struct ioc {TYPE_1__ params; scalar_t__ user_qos_params; int enabled; } ;
struct blkg_policy_data {int blkg; } ;
struct TYPE_4__ {struct ioc* ioc; } ;


 size_t QOS_MAX ;
 size_t QOS_MIN ;
 size_t QOS_RLAT ;
 size_t QOS_RPPM ;
 size_t QOS_WLAT ;
 size_t QOS_WPPM ;
 char* blkg_dev_name (int ) ;
 TYPE_2__* pd_to_iocg (struct blkg_policy_data*) ;
 int seq_printf (struct seq_file*,char*,char const*,int ,char*,int,int,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static u64 ioc_qos_prfill(struct seq_file *sf, struct blkg_policy_data *pd,
     int off)
{
 const char *dname = blkg_dev_name(pd->blkg);
 struct ioc *ioc = pd_to_iocg(pd)->ioc;

 if (!dname)
  return 0;

 seq_printf(sf, "%s enable=%d ctrl=%s rpct=%u.%02u rlat=%u wpct=%u.%02u wlat=%u min=%u.%02u max=%u.%02u\n",
     dname, ioc->enabled, ioc->user_qos_params ? "user" : "auto",
     ioc->params.qos[QOS_RPPM] / 10000,
     ioc->params.qos[QOS_RPPM] % 10000 / 100,
     ioc->params.qos[QOS_RLAT],
     ioc->params.qos[QOS_WPPM] / 10000,
     ioc->params.qos[QOS_WPPM] % 10000 / 100,
     ioc->params.qos[QOS_WLAT],
     ioc->params.qos[QOS_MIN] / 10000,
     ioc->params.qos[QOS_MIN] % 10000 / 100,
     ioc->params.qos[QOS_MAX] / 10000,
     ioc->params.qos[QOS_MAX] % 10000 / 100);
 return 0;
}
