#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sfe_ipv4_debug_xml_write_state {int /*<<< orphan*/  state; } ;
struct inode {int dummy; } ;
struct file {struct sfe_ipv4_debug_xml_write_state* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SFE_IPV4_DEBUG_XML_STATE_START ; 
 struct sfe_ipv4_debug_xml_write_state* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *file)
{
	struct sfe_ipv4_debug_xml_write_state *ws;

	ws = (struct sfe_ipv4_debug_xml_write_state *)file->private_data;
	if (!ws) {
		ws = FUNC0(sizeof(struct sfe_ipv4_debug_xml_write_state), GFP_KERNEL);
		if (!ws) {
			return -ENOMEM;
		}

		ws->state = SFE_IPV4_DEBUG_XML_STATE_START;
		file->private_data = ws;
	}

	return 0;
}