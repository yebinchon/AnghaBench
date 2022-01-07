
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {size_t si_type; size_t addr_space; int (* io_setup ) (TYPE_1__*) ;int (* io_cleanup ) (TYPE_1__*) ;TYPE_6__* dev; int slave_addr; scalar_t__ irq; scalar_t__ addr_source; int io_size; int addr_data; } ;
struct smi_info {int run_to_completion; int interrupt_disabled; int has_event_buffer; int dev_group_added; TYPE_1__ io; int req_events; int need_watch; int * stats; int * curr_msg; int * waiting_msg; int si_sm; TYPE_4__* handlers; int si_num; } ;
struct TYPE_14__ {int * init_name; } ;
struct TYPE_13__ {scalar_t__ (* detect ) (int ) ;int (* init_data ) (int ,TYPE_1__*) ;int (* size ) () ;} ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int SI_NUM_STATS ;

 int WARN_ON (int ) ;
 int * addr_space_to_str ;
 int atomic_set (int *,int) ;
 TYPE_4__ bt_smi_handlers ;
 int check_for_broken_irqs (struct smi_info*) ;
 int dev_err (TYPE_6__*,char*,...) ;
 int dev_info (TYPE_6__*,char*,int ) ;
 int dev_set_drvdata (TYPE_6__*,struct smi_info*) ;
 int device_add_group (TYPE_6__*,int *) ;
 int handlers ;
 int ipmi_addr_src_to_str (scalar_t__) ;
 int ipmi_register_smi (int *,struct smi_info*,TYPE_6__*,int ) ;
 int ipmi_si_dev_attr_group ;
 TYPE_4__ kcs_smi_handlers ;
 int kmalloc (int ,int ) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ,int ,int ,int ,scalar_t__) ;
 int setup_oem_data_handler (struct smi_info*) ;
 int setup_xaction_handlers (struct smi_info*) ;
 int * si_to_str ;
 int smi_num ;
 TYPE_4__ smic_smi_handlers ;
 int start_clear_flags (struct smi_info*) ;
 int stub1 () ;
 int stub2 (int ,TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 scalar_t__ stub4 (int ) ;
 int stub5 (TYPE_1__*) ;
 int try_enable_event_buffer (struct smi_info*) ;
 int try_get_dev_id (struct smi_info*) ;

__attribute__((used)) static int try_smi_init(struct smi_info *new_smi)
{
 int rv = 0;
 int i;

 pr_info("Trying %s-specified %s state machine at %s address 0x%lx, slave address 0x%x, irq %d\n",
  ipmi_addr_src_to_str(new_smi->io.addr_source),
  si_to_str[new_smi->io.si_type],
  addr_space_to_str[new_smi->io.addr_space],
  new_smi->io.addr_data,
  new_smi->io.slave_addr, new_smi->io.irq);

 switch (new_smi->io.si_type) {
 case 129:
  new_smi->handlers = &kcs_smi_handlers;
  break;

 case 128:
  new_smi->handlers = &smic_smi_handlers;
  break;

 case 130:
  new_smi->handlers = &bt_smi_handlers;
  break;

 default:

  rv = -EIO;
  goto out_err;
 }

 new_smi->si_num = smi_num;


 if (!new_smi->io.dev) {
  pr_err("IPMI interface added with no device\n");
  rv = EIO;
  goto out_err;
 }


 new_smi->si_sm = kmalloc(new_smi->handlers->size(), GFP_KERNEL);
 if (!new_smi->si_sm) {
  rv = -ENOMEM;
  goto out_err;
 }
 new_smi->io.io_size = new_smi->handlers->init_data(new_smi->si_sm,
          &new_smi->io);


 rv = new_smi->io.io_setup(&new_smi->io);
 if (rv) {
  dev_err(new_smi->io.dev, "Could not set up I/O space\n");
  goto out_err;
 }


 if (new_smi->handlers->detect(new_smi->si_sm)) {
  if (new_smi->io.addr_source)
   dev_err(new_smi->io.dev,
    "Interface detection failed\n");
  rv = -ENODEV;
  goto out_err;
 }





 rv = try_get_dev_id(new_smi);
 if (rv) {
  if (new_smi->io.addr_source)
   dev_err(new_smi->io.dev,
          "There appears to be no BMC at this location\n");
  goto out_err;
 }

 setup_oem_data_handler(new_smi);
 setup_xaction_handlers(new_smi);
 check_for_broken_irqs(new_smi);

 new_smi->waiting_msg = ((void*)0);
 new_smi->curr_msg = ((void*)0);
 atomic_set(&new_smi->req_events, 0);
 new_smi->run_to_completion = 0;
 for (i = 0; i < SI_NUM_STATS; i++)
  atomic_set(&new_smi->stats[i], 0);

 new_smi->interrupt_disabled = 1;
 atomic_set(&new_smi->need_watch, 0);

 rv = try_enable_event_buffer(new_smi);
 if (rv == 0)
  new_smi->has_event_buffer = 1;





 start_clear_flags(new_smi);





 if (new_smi->io.irq) {
  new_smi->interrupt_disabled = 0;
  atomic_set(&new_smi->req_events, 1);
 }

 dev_set_drvdata(new_smi->io.dev, new_smi);
 rv = device_add_group(new_smi->io.dev, &ipmi_si_dev_attr_group);
 if (rv) {
  dev_err(new_smi->io.dev,
   "Unable to add device attributes: error %d\n",
   rv);
  goto out_err;
 }
 new_smi->dev_group_added = 1;

 rv = ipmi_register_smi(&handlers,
          new_smi,
          new_smi->io.dev,
          new_smi->io.slave_addr);
 if (rv) {
  dev_err(new_smi->io.dev,
   "Unable to register device: error %d\n",
   rv);
  goto out_err;
 }


 smi_num++;

 dev_info(new_smi->io.dev, "IPMI %s interface initialized\n",
   si_to_str[new_smi->io.si_type]);

 WARN_ON(new_smi->io.dev->init_name != ((void*)0));

 out_err:
 if (rv && new_smi->io.io_cleanup) {
  new_smi->io.io_cleanup(&new_smi->io);
  new_smi->io.io_cleanup = ((void*)0);
 }

 return rv;
}
