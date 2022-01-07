
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef int ssize_t ;


 int EAGAIN ;
 int kstrtou64 (char const*,int ,int *) ;
 int post_mobility_fixup () ;
 int rtas_ibm_suspend_me (int ) ;
 int ssleep (int) ;
 int start_topology_update () ;
 int stop_topology_update () ;

__attribute__((used)) static ssize_t migration_store(struct class *class,
          struct class_attribute *attr, const char *buf,
          size_t count)
{
 u64 streamid;
 int rc;

 rc = kstrtou64(buf, 0, &streamid);
 if (rc)
  return rc;

 stop_topology_update();

 do {
  rc = rtas_ibm_suspend_me(streamid);
  if (rc == -EAGAIN)
   ssleep(1);
 } while (rc == -EAGAIN);

 if (rc)
  return rc;

 post_mobility_fixup();

 start_topology_update();

 return count;
}
