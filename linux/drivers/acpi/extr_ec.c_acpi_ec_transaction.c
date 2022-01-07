
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct transaction {scalar_t__ rlen; scalar_t__ rdata; int wdata; scalar_t__ wlen; } ;
struct acpi_ec {int mutex; scalar_t__ global_lock; } ;


 int ACPI_EC_UDELAY_GLK ;
 scalar_t__ ACPI_FAILURE (int) ;
 int EINVAL ;
 int ENODEV ;
 int acpi_acquire_global_lock (int ,int *) ;
 int acpi_ec_transaction_unlocked (struct acpi_ec*,struct transaction*) ;
 int acpi_release_global_lock (int ) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int acpi_ec_transaction(struct acpi_ec *ec, struct transaction *t)
{
 int status;
 u32 glk;

 if (!ec || (!t) || (t->wlen && !t->wdata) || (t->rlen && !t->rdata))
  return -EINVAL;
 if (t->rdata)
  memset(t->rdata, 0, t->rlen);

 mutex_lock(&ec->mutex);
 if (ec->global_lock) {
  status = acpi_acquire_global_lock(ACPI_EC_UDELAY_GLK, &glk);
  if (ACPI_FAILURE(status)) {
   status = -ENODEV;
   goto unlock;
  }
 }

 status = acpi_ec_transaction_unlocked(ec, t);

 if (ec->global_lock)
  acpi_release_global_lock(glk);
unlock:
 mutex_unlock(&ec->mutex);
 return status;
}
