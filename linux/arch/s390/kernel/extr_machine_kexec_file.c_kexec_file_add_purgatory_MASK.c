#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s390_load_data {int /*<<< orphan*/  memsz; } ;
struct kimage {scalar_t__ type; } ;
struct kexec_buf {scalar_t__ memsz; int /*<<< orphan*/  mem; struct kimage* image; } ;
struct TYPE_2__ {scalar_t__ start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KEXEC_TYPE_CRASH ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 TYPE_1__ crashk_res ; 
 int FUNC1 (struct kimage*,struct s390_load_data*) ; 
 int FUNC2 (struct kimage*,struct kexec_buf*) ; 

__attribute__((used)) static int FUNC3(struct kimage *image,
				    struct s390_load_data *data)
{
	struct kexec_buf buf;
	int ret;

	buf.image = image;

	data->memsz = FUNC0(data->memsz, PAGE_SIZE);
	buf.mem = data->memsz;
	if (image->type == KEXEC_TYPE_CRASH)
		buf.mem += crashk_res.start;

	ret = FUNC2(image, &buf);
	if (ret)
		return ret;
	data->memsz += buf.memsz;

	return FUNC1(image, data);
}