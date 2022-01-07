
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {size_t len; int* buf; int addr; } ;
struct TYPE_10__ {TYPE_1__* algo; } ;
struct TYPE_9__ {int* buf; TYPE_2__* client; } ;
struct TYPE_8__ {TYPE_4__* adapter; int addr; } ;
struct TYPE_7__ {int master_xfer; } ;


 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int I2C_LOCK_SEGMENT ;
 unsigned int SLEEP_DURATION_HI ;
 unsigned int SLEEP_DURATION_LOW ;
 size_t TPM_I2C_INFINEON_BUFSIZE ;
 int __i2c_transfer (TYPE_4__*,struct i2c_msg*,int) ;
 int i2c_lock_bus (TYPE_4__*,int ) ;
 int i2c_unlock_bus (TYPE_4__*,int ) ;
 int memcpy (int*,int*,size_t) ;
 TYPE_3__ tpm_dev ;
 int usleep_range (unsigned int,unsigned int) ;

__attribute__((used)) static int iic_tpm_write_generic(u8 addr, u8 *buffer, size_t len,
     unsigned int sleep_low,
     unsigned int sleep_hi, u8 max_count)
{
 int rc = -EIO;
 int count;

 struct i2c_msg msg1 = {
  .addr = tpm_dev.client->addr,
  .len = len + 1,
  .buf = tpm_dev.buf
 };

 if (len > TPM_I2C_INFINEON_BUFSIZE)
  return -EINVAL;

 if (!tpm_dev.client->adapter->algo->master_xfer)
  return -EOPNOTSUPP;
 i2c_lock_bus(tpm_dev.client->adapter, I2C_LOCK_SEGMENT);


 tpm_dev.buf[0] = addr;
 memcpy(&(tpm_dev.buf[1]), buffer, len);







 for (count = 0; count < max_count; count++) {
  rc = __i2c_transfer(tpm_dev.client->adapter, &msg1, 1);
  if (rc > 0)
   break;
  usleep_range(sleep_low, sleep_hi);
 }

 i2c_unlock_bus(tpm_dev.client->adapter, I2C_LOCK_SEGMENT);

 usleep_range(SLEEP_DURATION_LOW, SLEEP_DURATION_HI);





 if (rc <= 0)
  return -EIO;

 return 0;
}
