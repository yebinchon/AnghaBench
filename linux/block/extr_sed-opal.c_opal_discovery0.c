
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_dev {int comid; int resp; } ;


 int IO_BUFFER_LENGTH ;
 int OPAL_DISCOVERY_COMID ;
 int memset (int ,int ,int ) ;
 int opal_discovery0_end (struct opal_dev*) ;
 int opal_recv_cmd (struct opal_dev*) ;

__attribute__((used)) static int opal_discovery0(struct opal_dev *dev, void *data)
{
 int ret;

 memset(dev->resp, 0, IO_BUFFER_LENGTH);
 dev->comid = OPAL_DISCOVERY_COMID;
 ret = opal_recv_cmd(dev);
 if (ret)
  return ret;

 return opal_discovery0_end(dev);
}
