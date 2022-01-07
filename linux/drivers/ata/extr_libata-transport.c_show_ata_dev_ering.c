
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_show_ering_arg {char* member_0; int written; int member_1; } ;
struct ata_device {int ering; } ;
typedef int ssize_t ;


 int ata_ering_map (int *,int ,struct ata_show_ering_arg*) ;
 int ata_show_ering ;
 struct ata_device* transport_class_to_dev (struct device*) ;

__attribute__((used)) static ssize_t
show_ata_dev_ering(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct ata_device *ata_dev = transport_class_to_dev(dev);
 struct ata_show_ering_arg arg = { buf, 0 };

 ata_ering_map(&ata_dev->ering, ata_show_ering, &arg);
 return arg.written;
}
