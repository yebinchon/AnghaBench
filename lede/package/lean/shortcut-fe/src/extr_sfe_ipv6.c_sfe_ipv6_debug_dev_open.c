
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6_debug_xml_write_state {int state; } ;
struct inode {int dummy; } ;
struct file {struct sfe_ipv6_debug_xml_write_state* private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SFE_IPV6_DEBUG_XML_STATE_START ;
 struct sfe_ipv6_debug_xml_write_state* kzalloc (int,int ) ;

__attribute__((used)) static int sfe_ipv6_debug_dev_open(struct inode *inode, struct file *file)
{
 struct sfe_ipv6_debug_xml_write_state *ws;

 ws = (struct sfe_ipv6_debug_xml_write_state *)file->private_data;
 if (ws) {
  return 0;
 }

 ws = kzalloc(sizeof(struct sfe_ipv6_debug_xml_write_state), GFP_KERNEL);
 if (!ws) {
  return -ENOMEM;
 }

 ws->state = SFE_IPV6_DEBUG_XML_STATE_START;
 file->private_data = ws;

 return 0;
}
