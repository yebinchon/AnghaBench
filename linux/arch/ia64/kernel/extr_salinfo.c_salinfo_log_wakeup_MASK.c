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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct salinfo_data_saved {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  size; int /*<<< orphan*/  id; int /*<<< orphan*/  cpu; } ;
struct salinfo_data {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  cpu_event; struct salinfo_data_saved* data_saved; int /*<<< orphan*/  saved_num; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ sal_log_record_header_t ;

/* Variables and functions */
 int FUNC0 (struct salinfo_data_saved*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  data_saved_lock ; 
 struct salinfo_data* salinfo_data ; 
 struct salinfo_data_saved* salinfo_log_name ; 
 int /*<<< orphan*/  FUNC3 (struct salinfo_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(int type, u8 *buffer, u64 size, int irqsafe)
{
	struct salinfo_data *data = salinfo_data + type;
	struct salinfo_data_saved *data_saved;
	unsigned long flags = 0;
	int i;
	int saved_size = FUNC0(data->data_saved);

	FUNC1(type >= FUNC0(salinfo_log_name));

	if (irqsafe)
		FUNC5(&data_saved_lock, flags);
	if (buffer) {
		for (i = 0, data_saved = data->data_saved; i < saved_size; ++i, ++data_saved) {
			if (!data_saved->buffer)
				break;
		}
		if (i == saved_size) {
			if (!data->saved_num) {
				FUNC3(data, 0);
				data_saved = data->data_saved + saved_size - 1;
			} else
				data_saved = NULL;
		}
		if (data_saved) {
			data_saved->cpu = FUNC4();
			data_saved->id = ((sal_log_record_header_t *)buffer)->id;
			data_saved->size = size;
			data_saved->buffer = buffer;
		}
	}
	FUNC2(FUNC4(), &data->cpu_event);
	if (irqsafe) {
		FUNC7(&data->read_wait);
		FUNC6(&data_saved_lock, flags);
	}
}