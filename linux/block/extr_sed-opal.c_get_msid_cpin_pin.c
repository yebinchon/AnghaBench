
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {size_t prev_d_len; int prev_data; int parsed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t OPAL_C_PIN_MSID ;
 int OPAL_INVAL_PARAM ;
 int OPAL_PIN ;
 int generic_get_column (struct opal_dev*,int ,int ) ;
 int kmemdup (char const*,size_t,int ) ;
 int * opaluid ;
 int pr_debug (char*) ;
 size_t response_get_string (int *,int,char const**) ;

__attribute__((used)) static int get_msid_cpin_pin(struct opal_dev *dev, void *data)
{
 const char *msid_pin;
 size_t strlen;
 int err;

 err = generic_get_column(dev, opaluid[OPAL_C_PIN_MSID], OPAL_PIN);
 if (err)
  return err;

 strlen = response_get_string(&dev->parsed, 4, &msid_pin);
 if (!msid_pin) {
  pr_debug("Couldn't extract MSID_CPIN from response\n");
  return OPAL_INVAL_PARAM;
 }

 dev->prev_data = kmemdup(msid_pin, strlen, GFP_KERNEL);
 if (!dev->prev_data)
  return -ENOMEM;

 dev->prev_d_len = strlen;

 return 0;
}
