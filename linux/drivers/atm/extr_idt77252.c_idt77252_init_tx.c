
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vc_map {int class; size_t scd_index; int index; int flags; struct atm_vcc* tx_vcc; TYPE_2__* scq; } ;
struct idt77252_dev {int ** scd2vc; int name; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_5__ {int traffic_class; } ;
struct atm_qos {TYPE_1__ txtp; } ;
struct TYPE_6__ {scalar_t__ scd; } ;






 int EBUSY ;
 int ENOMEM ;
 int EPROTONOSUPPORT ;
 int SAR_REG_TCMDQ ;


 int TCMDQ_START ;
 int VCF_IDLE ;
 int VCF_TX ;
 TYPE_2__* alloc_scq (struct idt77252_dev*,int) ;
 int clear_bit (int ,int *) ;
 int fill_scd (struct idt77252_dev*,TYPE_2__*,int) ;
 int free_scq (struct idt77252_dev*,TYPE_2__*) ;
 scalar_t__ get_free_scd (struct idt77252_dev*,struct vc_map*) ;
 int idt77252_init_cbr (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int idt77252_init_ubr (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int printk (char*,int ,...) ;
 int set_bit (int ,int *) ;
 scalar_t__ set_tct (struct idt77252_dev*,struct vc_map*) ;
 scalar_t__ test_bit (int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static int
idt77252_init_tx(struct idt77252_dev *card, struct vc_map *vc,
   struct atm_vcc *vcc, struct atm_qos *qos)
{
 int error;

 if (test_bit(VCF_TX, &vc->flags))
  return -EBUSY;

 switch (qos->txtp.traffic_class) {
  case 132:
   vc->class = 129;
   break;

  case 131:
   vc->class = 128;
   break;

  case 130:
  case 133:
  default:
   return -EPROTONOSUPPORT;
 }

 vc->scq = alloc_scq(card, vc->class);
 if (!vc->scq) {
  printk("%s: can't get SCQ.\n", card->name);
  return -ENOMEM;
 }

 vc->scq->scd = get_free_scd(card, vc);
 if (vc->scq->scd == 0) {
  printk("%s: no SCD available.\n", card->name);
  free_scq(card, vc->scq);
  return -ENOMEM;
 }

 fill_scd(card, vc->scq, vc->class);

 if (set_tct(card, vc)) {
  printk("%s: class %d not supported.\n",
         card->name, qos->txtp.traffic_class);

  card->scd2vc[vc->scd_index] = ((void*)0);
  free_scq(card, vc->scq);
  return -EPROTONOSUPPORT;
 }

 switch (vc->class) {
  case 129:
   error = idt77252_init_cbr(card, vc, vcc, qos);
   if (error) {
    card->scd2vc[vc->scd_index] = ((void*)0);
    free_scq(card, vc->scq);
    return error;
   }

   clear_bit(VCF_IDLE, &vc->flags);
   writel(TCMDQ_START | vc->index, SAR_REG_TCMDQ);
   break;

  case 128:
   error = idt77252_init_ubr(card, vc, vcc, qos);
   if (error) {
    card->scd2vc[vc->scd_index] = ((void*)0);
    free_scq(card, vc->scq);
    return error;
   }

   set_bit(VCF_IDLE, &vc->flags);
   break;
 }

 vc->tx_vcc = vcc;
 set_bit(VCF_TX, &vc->flags);
 return 0;
}
