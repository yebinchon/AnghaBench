
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
struct opal_msg {int dummy; } ;
typedef int m ;
typedef scalar_t__ int64_t ;


 int EIO ;
 int ENXIO ;
 scalar_t__ OPAL_ASYNC_COMPLETION ;
 int OPAL_PCI_SET_POWER_STATE ;
 scalar_t__ OPAL_SUCCESS ;
 int memcpy (struct opal_msg*,struct opal_msg*,int) ;
 int opal_async_get_token_interruptible () ;
 int opal_async_release_token (int) ;
 int opal_async_wait_response (int,struct opal_msg*) ;
 int opal_check_token (int ) ;
 scalar_t__ opal_pci_set_power_state (int,int ,int ) ;
 scalar_t__ unlikely (int) ;

int pnv_pci_set_power_state(uint64_t id, uint8_t state, struct opal_msg *msg)
{
 struct opal_msg m;
 int token, ret;
 int64_t rc;

 if (!opal_check_token(OPAL_PCI_SET_POWER_STATE))
  return -ENXIO;

 token = opal_async_get_token_interruptible();
 if (unlikely(token < 0))
  return token;

 rc = opal_pci_set_power_state(token, id, (uint64_t)&state);
 if (rc == OPAL_SUCCESS) {
  ret = 0;
  goto exit;
 } else if (rc != OPAL_ASYNC_COMPLETION) {
  ret = -EIO;
  goto exit;
 }

 ret = opal_async_wait_response(token, &m);
 if (ret < 0)
  goto exit;

 if (msg) {
  ret = 1;
  memcpy(msg, &m, sizeof(m));
 }

exit:
 opal_async_release_token(token);
 return ret;
}
