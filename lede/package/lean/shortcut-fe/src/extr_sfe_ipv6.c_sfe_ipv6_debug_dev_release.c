
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6_debug_xml_write_state {int dummy; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int kfree (struct sfe_ipv6_debug_xml_write_state*) ;

__attribute__((used)) static int sfe_ipv6_debug_dev_release(struct inode *inode, struct file *file)
{
 struct sfe_ipv6_debug_xml_write_state *ws;

 ws = (struct sfe_ipv6_debug_xml_write_state *)file->private_data;
 if (ws) {



  kfree(ws);
 }

 return 0;
}
