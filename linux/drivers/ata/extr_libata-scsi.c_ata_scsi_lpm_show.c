
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ata_port {size_t target_lpm_policy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 size_t ARRAY_SIZE (char**) ;
 int EINVAL ;
 int PAGE_SIZE ;
 char** ata_lpm_policy_names ;
 struct ata_port* ata_shost_to_port (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t ata_scsi_lpm_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct ata_port *ap = ata_shost_to_port(shost);

 if (ap->target_lpm_policy >= ARRAY_SIZE(ata_lpm_policy_names))
  return -EINVAL;

 return snprintf(buf, PAGE_SIZE, "%s\n",
   ata_lpm_policy_names[ap->target_lpm_policy]);
}
