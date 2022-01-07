
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {char* s; } ;
struct switch_val {unsigned int port_vlan; int len; TYPE_2__ value; } ;
struct switch_dev {unsigned int ports; } ;
struct switch_attr {int dummy; } ;
struct ar8xxx_priv {char* buf; int* mib_stats; int mib_lock; struct ar8xxx_chip* chip; } ;
struct ar8xxx_chip {unsigned int num_mibs; TYPE_1__* mib_decs; } ;
typedef int buf1 ;
struct TYPE_3__ {char* name; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ar8xxx_byte_to_str (char*,int,int) ;
 int ar8xxx_has_mib_counters (struct ar8xxx_priv*) ;
 int ar8xxx_mib_capture (struct ar8xxx_priv*) ;
 int ar8xxx_mib_fetch_port_stat (struct ar8xxx_priv*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,...) ;
 int strcmp (char const*,char*) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_get_port_mib(struct switch_dev *dev,
         const struct switch_attr *attr,
         struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 const struct ar8xxx_chip *chip = priv->chip;
 u64 *mib_stats, mib_data;
 unsigned int port;
 int ret;
 char *buf = priv->buf;
 char buf1[64];
 const char *mib_name;
 int i, len = 0;
 bool mib_stats_empty = 1;

 if (!ar8xxx_has_mib_counters(priv))
  return -EOPNOTSUPP;

 port = val->port_vlan;
 if (port >= dev->ports)
  return -EINVAL;

 mutex_lock(&priv->mib_lock);
 ret = ar8xxx_mib_capture(priv);
 if (ret)
  goto unlock;

 ar8xxx_mib_fetch_port_stat(priv, port, 0);

 len += snprintf(buf + len, sizeof(priv->buf) - len,
   "MIB counters\n");

 mib_stats = &priv->mib_stats[port * chip->num_mibs];
 for (i = 0; i < chip->num_mibs; i++) {
  mib_name = chip->mib_decs[i].name;
  mib_data = mib_stats[i];
  len += snprintf(buf + len, sizeof(priv->buf) - len,
    "%-12s: %llu\n", mib_name, mib_data);
  if ((!strcmp(mib_name, "TxByte") ||
      !strcmp(mib_name, "RxGoodByte")) &&
      mib_data >= 1024) {
   ar8xxx_byte_to_str(buf1, sizeof(buf1), mib_data);
   --len;
   len += snprintf(buf + len, sizeof(priv->buf) - len,
     " (%s)\n", buf1);
  }
  if (mib_stats_empty && mib_data)
   mib_stats_empty = 0;
 }

 if (mib_stats_empty)
  len = snprintf(buf, sizeof(priv->buf), "No MIB data");

 val->value.s = buf;
 val->len = len;

 ret = 0;

unlock:
 mutex_unlock(&priv->mib_lock);
 return ret;
}
