#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  oppanel_line_t ;
struct TYPE_9__ {void* line; void* line_len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*) ; 
 void* FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int num_lines ; 
 int FUNC6 (struct device_node*,char*,int*) ; 
 TYPE_2__* oppanel_data ; 
 int /*<<< orphan*/  oppanel_dev ; 
 TYPE_2__* oppanel_lines ; 
 int oppanel_size ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	u32 line_len;
	int rc, i;

	rc = FUNC6(np, "#length", &line_len);
	if (rc) {
		FUNC8("Operator panel length property not found\n");
		return rc;
	}
	rc = FUNC6(np, "#lines", &num_lines);
	if (rc) {
		FUNC8("Operator panel lines property not found\n");
		return rc;
	}
	oppanel_size = line_len * num_lines;

	FUNC7("Operator panel of size %u found with %u lines of length %u\n",
			oppanel_size, num_lines, line_len);

	oppanel_data = FUNC2(oppanel_size, sizeof(*oppanel_data), GFP_KERNEL);
	if (!oppanel_data)
		return -ENOMEM;

	oppanel_lines = FUNC2(num_lines, sizeof(oppanel_line_t), GFP_KERNEL);
	if (!oppanel_lines) {
		rc = -ENOMEM;
		goto free_oppanel_data;
	}

	FUNC4(oppanel_data, ' ', oppanel_size);
	for (i = 0; i < num_lines; i++) {
		oppanel_lines[i].line_len = FUNC1(line_len);
		oppanel_lines[i].line = FUNC1(FUNC0(&oppanel_data[i *
						line_len]));
	}

	rc = FUNC5(&oppanel_dev);
	if (rc) {
		FUNC8("Failed to register as misc device\n");
		goto free_oppanel;
	}

	return 0;

free_oppanel:
	FUNC3(oppanel_lines);
free_oppanel_data:
	FUNC3(oppanel_data);
	return rc;
}