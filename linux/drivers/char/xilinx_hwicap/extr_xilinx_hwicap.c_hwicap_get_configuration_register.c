
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hwicap_drvdata {TYPE_1__* config; } ;
struct TYPE_2__ {int (* set_configuration ) (struct hwicap_drvdata*,int*,int) ;int (* get_status ) (struct hwicap_drvdata*) ;int (* get_configuration ) (struct hwicap_drvdata*,int*,int) ;} ;


 int EIO ;
 int XHI_DUMMY_PACKET ;
 int XHI_NOOP_PACKET ;
 int XHI_SR_DALIGN_MASK ;
 int XHI_SYNC_PACKET ;
 int hwicap_type_1_read (int) ;
 int stub1 (struct hwicap_drvdata*,int*,int) ;
 int stub2 (struct hwicap_drvdata*) ;
 int stub3 (struct hwicap_drvdata*,int*,int) ;
 int stub4 (struct hwicap_drvdata*,int*,int) ;

__attribute__((used)) static int hwicap_get_configuration_register(struct hwicap_drvdata *drvdata,
  u32 reg, u32 *reg_data)
{
 int status;
 u32 buffer[6];
 u32 index = 0;




 buffer[index++] = XHI_DUMMY_PACKET;
 buffer[index++] = XHI_NOOP_PACKET;
 buffer[index++] = XHI_SYNC_PACKET;
 buffer[index++] = XHI_NOOP_PACKET;
 buffer[index++] = XHI_NOOP_PACKET;





 status = drvdata->config->set_configuration(drvdata,
          &buffer[0], index);
 if (status)
  return status;


 status = drvdata->config->get_status(drvdata);
 if ((status & XHI_SR_DALIGN_MASK) != XHI_SR_DALIGN_MASK)
  return -EIO;

 index = 0;
 buffer[index++] = hwicap_type_1_read(reg) | 1;
 buffer[index++] = XHI_NOOP_PACKET;
 buffer[index++] = XHI_NOOP_PACKET;





 status = drvdata->config->set_configuration(drvdata,
   &buffer[0], index);
 if (status)
  return status;




 status = drvdata->config->get_configuration(drvdata, reg_data, 1);
 if (status)
  return status;

 return 0;
}
