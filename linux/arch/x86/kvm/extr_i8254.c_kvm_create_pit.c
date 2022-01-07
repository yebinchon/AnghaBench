
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct pid {int dummy; } ;
struct TYPE_5__ {int func; } ;
struct TYPE_4__ {int irq_acked; scalar_t__ gsi; } ;
struct TYPE_6__ {int function; } ;
struct kvm_kpit_state {TYPE_1__ irq_ack_notifier; TYPE_3__ timer; int lock; } ;
struct kvm_pit {scalar_t__ irq_source_id; int worker; int dev; int speaker_dev; TYPE_2__ mask_notifier; struct kvm_kpit_state pit_state; struct kvm* kvm; int expired; } ;
struct kvm {int slots_lock; } ;
typedef int pid_t ;


 int CLOCK_MONOTONIC ;
 int GFP_KERNEL_ACCOUNT ;
 int HRTIMER_MODE_ABS ;
 scalar_t__ IS_ERR (int ) ;
 int KVM_PIO_BUS ;
 int KVM_PIT_BASE_ADDRESS ;
 int KVM_PIT_MEM_LENGTH ;
 int KVM_PIT_SPEAKER_DUMMY ;
 int KVM_SPEAKER_BASE_ADDRESS ;
 int current ;
 struct pid* get_pid (int ) ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 int kfree (struct kvm_pit*) ;
 int kthread_create_worker (int ,char*,int ) ;
 int kthread_destroy_worker (int ) ;
 int kthread_init_work (int *,int ) ;
 int kvm_free_irq_source_id (struct kvm*,scalar_t__) ;
 int kvm_io_bus_register_dev (struct kvm*,int ,int ,int,int *) ;
 int kvm_io_bus_unregister_dev (struct kvm*,int ,int *) ;
 int kvm_iodevice_init (int *,int *) ;
 int kvm_pit_ack_irq ;
 int kvm_pit_reset (struct kvm_pit*) ;
 int kvm_pit_set_reinject (struct kvm_pit*,int) ;
 scalar_t__ kvm_request_irq_source_id (struct kvm*) ;
 struct kvm_pit* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pid_vnr (struct pid*) ;
 int pit_dev_ops ;
 int pit_do_work ;
 int pit_mask_notifer ;
 int pit_timer_fn ;
 int put_pid (struct pid*) ;
 int speaker_dev_ops ;
 int task_tgid (int ) ;

struct kvm_pit *kvm_create_pit(struct kvm *kvm, u32 flags)
{
 struct kvm_pit *pit;
 struct kvm_kpit_state *pit_state;
 struct pid *pid;
 pid_t pid_nr;
 int ret;

 pit = kzalloc(sizeof(struct kvm_pit), GFP_KERNEL_ACCOUNT);
 if (!pit)
  return ((void*)0);

 pit->irq_source_id = kvm_request_irq_source_id(kvm);
 if (pit->irq_source_id < 0)
  goto fail_request;

 mutex_init(&pit->pit_state.lock);

 pid = get_pid(task_tgid(current));
 pid_nr = pid_vnr(pid);
 put_pid(pid);

 pit->worker = kthread_create_worker(0, "kvm-pit/%d", pid_nr);
 if (IS_ERR(pit->worker))
  goto fail_kthread;

 kthread_init_work(&pit->expired, pit_do_work);

 pit->kvm = kvm;

 pit_state = &pit->pit_state;
 hrtimer_init(&pit_state->timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS);
 pit_state->timer.function = pit_timer_fn;

 pit_state->irq_ack_notifier.gsi = 0;
 pit_state->irq_ack_notifier.irq_acked = kvm_pit_ack_irq;
 pit->mask_notifier.func = pit_mask_notifer;

 kvm_pit_reset(pit);

 kvm_pit_set_reinject(pit, 1);

 mutex_lock(&kvm->slots_lock);
 kvm_iodevice_init(&pit->dev, &pit_dev_ops);
 ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS, KVM_PIT_BASE_ADDRESS,
          KVM_PIT_MEM_LENGTH, &pit->dev);
 if (ret < 0)
  goto fail_register_pit;

 if (flags & KVM_PIT_SPEAKER_DUMMY) {
  kvm_iodevice_init(&pit->speaker_dev, &speaker_dev_ops);
  ret = kvm_io_bus_register_dev(kvm, KVM_PIO_BUS,
           KVM_SPEAKER_BASE_ADDRESS, 4,
           &pit->speaker_dev);
  if (ret < 0)
   goto fail_register_speaker;
 }
 mutex_unlock(&kvm->slots_lock);

 return pit;

fail_register_speaker:
 kvm_io_bus_unregister_dev(kvm, KVM_PIO_BUS, &pit->dev);
fail_register_pit:
 mutex_unlock(&kvm->slots_lock);
 kvm_pit_set_reinject(pit, 0);
 kthread_destroy_worker(pit->worker);
fail_kthread:
 kvm_free_irq_source_id(kvm, pit->irq_source_id);
fail_request:
 kfree(pit);
 return ((void*)0);
}
