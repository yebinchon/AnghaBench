
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pseries_hp_errorlog {int dummy; } ;
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dlpar_parse_action (char**,struct pseries_hp_errorlog*) ;
 int dlpar_parse_id_type (char**,struct pseries_hp_errorlog*) ;
 int dlpar_parse_resource (char**,struct pseries_hp_errorlog*) ;
 int handle_dlpar_errorlog (struct pseries_hp_errorlog*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;
 int pr_err (char*,char const*) ;
 int pr_info (char*) ;

__attribute__((used)) static ssize_t dlpar_store(struct class *class, struct class_attribute *attr,
      const char *buf, size_t count)
{
 struct pseries_hp_errorlog hp_elog;
 char *argbuf;
 char *args;
 int rc;

 args = argbuf = kstrdup(buf, GFP_KERNEL);
 if (!argbuf) {
  pr_info("Could not allocate resources for DLPAR operation\n");
  kfree(argbuf);
  return -ENOMEM;
 }





 rc = dlpar_parse_resource(&args, &hp_elog);
 if (rc)
  goto dlpar_store_out;

 rc = dlpar_parse_action(&args, &hp_elog);
 if (rc)
  goto dlpar_store_out;

 rc = dlpar_parse_id_type(&args, &hp_elog);
 if (rc)
  goto dlpar_store_out;

 rc = handle_dlpar_errorlog(&hp_elog);

dlpar_store_out:
 kfree(argbuf);

 if (rc)
  pr_err("Could not handle DLPAR request \"%s\"\n", buf);

 return rc ? rc : count;
}
