
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int TOSA_GPIO_TC6393XB_L3V_ON ;
 int TOSA_GPIO_TC6393XB_REST_IN ;
 int TOSA_GPIO_TC6393XB_SUSPEND ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static int tosa_tc6393xb_enable(struct platform_device *dev)
{
 int rc;

 rc = gpio_request(TOSA_GPIO_TC6393XB_REST_IN, "tc6393xb #pclr");
 if (rc)
  goto err_req_pclr;
 rc = gpio_request(TOSA_GPIO_TC6393XB_SUSPEND, "tc6393xb #suspend");
 if (rc)
  goto err_req_suspend;
 rc = gpio_request(TOSA_GPIO_TC6393XB_L3V_ON, "tc6393xb l3v");
 if (rc)
  goto err_req_l3v;
 rc = gpio_direction_output(TOSA_GPIO_TC6393XB_L3V_ON, 0);
 if (rc)
  goto err_dir_l3v;
 rc = gpio_direction_output(TOSA_GPIO_TC6393XB_SUSPEND, 0);
 if (rc)
  goto err_dir_suspend;
 rc = gpio_direction_output(TOSA_GPIO_TC6393XB_REST_IN, 0);
 if (rc)
  goto err_dir_pclr;

 mdelay(1);

 gpio_set_value(TOSA_GPIO_TC6393XB_SUSPEND, 1);

 mdelay(10);

 gpio_set_value(TOSA_GPIO_TC6393XB_REST_IN, 1);
 gpio_set_value(TOSA_GPIO_TC6393XB_L3V_ON, 1);

 return 0;
err_dir_pclr:
err_dir_suspend:
err_dir_l3v:
 gpio_free(TOSA_GPIO_TC6393XB_L3V_ON);
err_req_l3v:
 gpio_free(TOSA_GPIO_TC6393XB_SUSPEND);
err_req_suspend:
 gpio_free(TOSA_GPIO_TC6393XB_REST_IN);
err_req_pclr:
 return rc;
}
