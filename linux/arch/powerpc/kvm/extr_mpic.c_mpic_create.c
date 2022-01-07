
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct openpic {int model; int brr1; int nb_irqs; int mpic_mode_mask; int flags; int * fsl; int lock; struct kvm_device* dev; TYPE_2__* kvm; } ;
struct kvm_device {TYPE_2__* kvm; struct openpic* private; } ;
struct TYPE_3__ {struct openpic* mpic; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GCR_MODE_MIXED ;
 int GCR_MODE_PROXY ;
 int GFP_KERNEL ;


 int OPENPIC_FLAG_IDR_CRIT ;
 int OPENPIC_FLAG_ILR ;
 int add_mmio_region (struct openpic*,int *) ;
 int fsl_common_init (struct openpic*) ;
 int fsl_mpic_20 ;
 int fsl_mpic_42 ;
 int kfree (struct openpic*) ;
 struct openpic* kzalloc (int,int ) ;
 int mpic_set_default_irq_routing (struct openpic*) ;
 int openpic_cpu_mmio ;
 int openpic_gbl_mmio ;
 int openpic_reset (struct openpic*) ;
 int openpic_src_mmio ;
 int openpic_tmr_mmio ;
 int smp_wmb () ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mpic_create(struct kvm_device *dev, u32 type)
{
 struct openpic *opp;
 int ret;


 if (dev->kvm->arch.mpic)
  return -EINVAL;

 opp = kzalloc(sizeof(struct openpic), GFP_KERNEL);
 if (!opp)
  return -ENOMEM;

 dev->private = opp;
 opp->kvm = dev->kvm;
 opp->dev = dev;
 opp->model = type;
 spin_lock_init(&opp->lock);

 add_mmio_region(opp, &openpic_gbl_mmio);
 add_mmio_region(opp, &openpic_tmr_mmio);
 add_mmio_region(opp, &openpic_src_mmio);
 add_mmio_region(opp, &openpic_cpu_mmio);

 switch (opp->model) {
 case 129:
  opp->fsl = &fsl_mpic_20;
  opp->brr1 = 0x00400200;
  opp->flags |= OPENPIC_FLAG_IDR_CRIT;
  opp->nb_irqs = 80;
  opp->mpic_mode_mask = GCR_MODE_MIXED;

  fsl_common_init(opp);

  break;

 case 128:
  opp->fsl = &fsl_mpic_42;
  opp->brr1 = 0x00400402;
  opp->flags |= OPENPIC_FLAG_ILR;
  opp->nb_irqs = 196;
  opp->mpic_mode_mask = GCR_MODE_PROXY;

  fsl_common_init(opp);

  break;

 default:
  ret = -ENODEV;
  goto err;
 }

 ret = mpic_set_default_irq_routing(opp);
 if (ret)
  goto err;

 openpic_reset(opp);

 smp_wmb();
 dev->kvm->arch.mpic = opp;

 return 0;

err:
 kfree(opp);
 return ret;
}
