
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {char* s; } ;
struct switch_val {int len; TYPE_2__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct mii_bus {int mdio_lock; } ;
struct arl_entry {int* mac; int portmap; } ;
struct TYPE_3__ {int ports; } ;
struct ar8xxx_priv {char* arl_buf; int reg_mutex; struct arl_entry* arl_table; TYPE_1__ dev; struct ar8xxx_chip* chip; struct mii_bus* mii_bus; } ;
struct ar8xxx_chip {int (* get_arl_entry ) (struct ar8xxx_priv*,struct arl_entry*,int *,int ) ;} ;


 int AR8XXX_ARL_GET_NEXT ;
 int AR8XXX_ARL_INITIALIZE ;
 int AR8XXX_NUM_ARL_RECORDS ;
 int BIT (int) ;
 int EOPNOTSUPP ;
 int memcmp (int*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ snprintf (char*,int,char*,...) ;
 int stub1 (struct ar8xxx_priv*,struct arl_entry*,int *,int ) ;
 int stub2 (struct ar8xxx_priv*,struct arl_entry*,int *,int ) ;
 struct ar8xxx_priv* swdev_to_ar8xxx (struct switch_dev*) ;

int
ar8xxx_sw_get_arl_table(struct switch_dev *dev,
   const struct switch_attr *attr,
   struct switch_val *val)
{
 struct ar8xxx_priv *priv = swdev_to_ar8xxx(dev);
 struct mii_bus *bus = priv->mii_bus;
 const struct ar8xxx_chip *chip = priv->chip;
 char *buf = priv->arl_buf;
 int i, j, k, len = 0;
 struct arl_entry *a, *a1;
 u32 status;

 if (!chip->get_arl_entry)
  return -EOPNOTSUPP;

 mutex_lock(&priv->reg_mutex);
 mutex_lock(&bus->mdio_lock);

 chip->get_arl_entry(priv, ((void*)0), ((void*)0), AR8XXX_ARL_INITIALIZE);

 for(i = 0; i < AR8XXX_NUM_ARL_RECORDS; ++i) {
  a = &priv->arl_table[i];
  duplicate:
  chip->get_arl_entry(priv, a, &status, AR8XXX_ARL_GET_NEXT);

  if (!status)
   break;





  for (j = 0; j < i; ++j) {
   a1 = &priv->arl_table[j];
   if (!memcmp(a->mac, a1->mac, sizeof(a->mac))) {

    a->portmap &= ~a1->portmap;
    if (!a->portmap)
     goto duplicate;
   }
  }
 }

 mutex_unlock(&bus->mdio_lock);

 len += snprintf(buf + len, sizeof(priv->arl_buf) - len,
                        "address resolution table\n");

 if (i == AR8XXX_NUM_ARL_RECORDS)
  len += snprintf(buf + len, sizeof(priv->arl_buf) - len,
    "Too many entries found, displaying the first %d only!\n",
    AR8XXX_NUM_ARL_RECORDS);

 for (j = 0; j < priv->dev.ports; ++j) {
  for (k = 0; k < i; ++k) {
   a = &priv->arl_table[k];
   if (!(a->portmap & BIT(j)))
    continue;
   len += snprintf(buf + len, sizeof(priv->arl_buf) - len,
     "Port %d: MAC %02x:%02x:%02x:%02x:%02x:%02x\n",
     j,
     a->mac[5], a->mac[4], a->mac[3],
     a->mac[2], a->mac[1], a->mac[0]);
  }
 }

 val->value.s = buf;
 val->len = len;

 mutex_unlock(&priv->reg_mutex);

 return 0;
}
