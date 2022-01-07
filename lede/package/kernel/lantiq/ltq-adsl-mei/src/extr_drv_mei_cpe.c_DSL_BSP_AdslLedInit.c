
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_config_param {int led; int source; void* operation_mask; } ;
typedef int DSL_DEV_MeiError_t ;
typedef scalar_t__ DSL_DEV_LedType_t ;
typedef scalar_t__ DSL_DEV_LedId_t ;
typedef scalar_t__ DSL_DEV_LedHandler_t ;
typedef int DSL_DEV_Device_t ;


 void* CONFIG_OPERATION_UPDATE_SOURCE ;
 int DSL_DEV_MEI_ERR_SUCCESS ;
 scalar_t__ DSL_LED_DATA_ID ;
 scalar_t__ DSL_LED_DATA_TYPE ;
 scalar_t__ DSL_LED_HD_FW ;
 scalar_t__ DSL_LED_LINK_ID ;
 scalar_t__ DSL_LED_LINK_TYPE ;

DSL_DEV_MeiError_t
DSL_BSP_AdslLedInit (DSL_DEV_Device_t * dev,
     DSL_DEV_LedId_t led_number,
     DSL_DEV_LedType_t type,
     DSL_DEV_LedHandler_t handler)
{
        return DSL_DEV_MEI_ERR_SUCCESS;
}
