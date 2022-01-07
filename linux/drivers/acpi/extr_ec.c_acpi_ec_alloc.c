
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_ec {int busy_polling; scalar_t__ polling_guard; int timestamp; int work; int lock; int list; int wait; int mutex; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int acpi_ec_event_handler ;
 int init_waitqueue_head (int *) ;
 int jiffies ;
 struct acpi_ec* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct acpi_ec *acpi_ec_alloc(void)
{
 struct acpi_ec *ec = kzalloc(sizeof(struct acpi_ec), GFP_KERNEL);

 if (!ec)
  return ((void*)0);
 mutex_init(&ec->mutex);
 init_waitqueue_head(&ec->wait);
 INIT_LIST_HEAD(&ec->list);
 spin_lock_init(&ec->lock);
 INIT_WORK(&ec->work, acpi_ec_event_handler);
 ec->timestamp = jiffies;
 ec->busy_polling = 1;
 ec->polling_guard = 0;
 return ec;
}
