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
struct agp_segment_priv {int dummy; } ;
struct agp_client {int num_segments; struct agp_segment_priv** segments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct agp_segment_priv**,int,struct agp_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct agp_client*) ; 

__attribute__((used)) static void FUNC2(struct agp_client *client,
			       struct agp_segment_priv ** seg, int num_segments)
{
	struct agp_segment_priv **prev_seg;

	prev_seg = client->segments;

	if (prev_seg != NULL)
		FUNC1(client);

	FUNC0("Adding seg %p (%d segments) to client %p", seg, num_segments, client);
	client->num_segments = num_segments;
	client->segments = seg;
}