#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  size_t u32 ;
struct sdio_func {int dummy; } ;
struct memory_type_mapping {size_t* mem_ptr; size_t mem_size; char* mem_name; size_t done_flag; } ;
struct device {int dummy; } ;
struct btmrvl_sdio_card {TYPE_2__* func; TYPE_1__* reg; int /*<<< orphan*/  supports_fw_dump; struct btmrvl_private* priv; } ;
struct btmrvl_private {int dummy; } ;
typedef  enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {unsigned int fw_dump_start; unsigned int fw_dump_end; int /*<<< orphan*/  fw_dump_ctrl; } ;

/* Variables and functions */
 size_t FUNC0 (struct memory_type_mapping*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FW_DUMP_READ_DONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RDWR_STATUS_DONE ; 
 int RDWR_STATUS_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_private*) ; 
 int FUNC4 (struct btmrvl_private*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ) ; 
 struct sdio_func* FUNC7 (struct device*) ; 
 struct memory_type_mapping* mem_type_mapping_tbl ; 
 int /*<<< orphan*/  FUNC8 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 struct btmrvl_sdio_card* FUNC10 (struct sdio_func*) ; 
 size_t FUNC11 (TYPE_2__*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (size_t*,char*) ; 
 scalar_t__ FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (size_t*) ; 
 void* FUNC17 (size_t) ; 

__attribute__((used)) static void FUNC18(struct device *dev)
{
	struct sdio_func *func = FUNC7(dev);
	struct btmrvl_sdio_card *card;
	struct btmrvl_private *priv;
	int ret = 0;
	unsigned int reg, reg_start, reg_end;
	enum rdwr_status stat;
	u8 *dbg_ptr, *end_ptr, *fw_dump_data, *fw_dump_ptr;
	u8 dump_num = 0, idx, i, read_reg, doneflag = 0;
	u32 memory_size, fw_dump_len = 0;

	card = FUNC10(func);
	priv = card->priv;

	/* dump sdio register first */
	FUNC3(priv);

	if (!card->supports_fw_dump) {
		FUNC1("Firmware dump not supported for this card!");
		return;
	}

	for (idx = 0; idx < FUNC0(mem_type_mapping_tbl); idx++) {
		struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			FUNC16(entry->mem_ptr);
			entry->mem_ptr = NULL;
		}
		entry->mem_size = 0;
	}

	FUNC5(priv);
	FUNC9(card->func);

	FUNC2("== btmrvl firmware dump start ==");

	stat = FUNC4(priv, doneflag);
	if (stat == RDWR_STATUS_FAILURE)
		goto done;

	reg = card->reg->fw_dump_start;
	/* Read the number of the memories which will dump */
	dump_num = FUNC11(card->func, reg, &ret);

	if (ret) {
		FUNC1("SDIO read memory length err");
		goto done;
	}

	/* Read the length of every memory which will dump */
	for (idx = 0; idx < dump_num; idx++) {
		struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

		stat = FUNC4(priv, doneflag);
		if (stat == RDWR_STATUS_FAILURE)
			goto done;

		memory_size = 0;
		reg = card->reg->fw_dump_start;
		for (i = 0; i < 4; i++) {
			read_reg = FUNC11(card->func, reg, &ret);
			if (ret) {
				FUNC1("SDIO read err");
				goto done;
			}
			memory_size |= (read_reg << i*8);
			reg++;
		}

		if (memory_size == 0) {
			FUNC2("Firmware dump finished!");
			FUNC13(card->func, FW_DUMP_READ_DONE,
				    card->reg->fw_dump_ctrl, &ret);
			if (ret) {
				FUNC1("SDIO Write MEMDUMP_FINISH ERR");
				goto done;
			}
			break;
		}

		FUNC2("%s_SIZE=0x%x", entry->mem_name, memory_size);
		entry->mem_ptr = FUNC17(memory_size + 1);
		entry->mem_size = memory_size;
		if (!entry->mem_ptr) {
			FUNC1("Vzalloc %s failed", entry->mem_name);
			goto done;
		}

		fw_dump_len += (FUNC15("========Start dump ") +
				FUNC15(entry->mem_name) +
				FUNC15("========\n") +
				(memory_size + 1) +
				FUNC15("\n========End dump========\n"));

		dbg_ptr = entry->mem_ptr;
		end_ptr = dbg_ptr + memory_size;

		doneflag = entry->done_flag;
		FUNC2("Start %s output, please wait...",
			entry->mem_name);

		do {
			stat = FUNC4(priv, doneflag);
			if (stat == RDWR_STATUS_FAILURE)
				goto done;

			reg_start = card->reg->fw_dump_start;
			reg_end = card->reg->fw_dump_end;
			for (reg = reg_start; reg <= reg_end; reg++) {
				*dbg_ptr = FUNC11(card->func, reg, &ret);
				if (ret) {
					FUNC1("SDIO read err");
					goto done;
				}
				if (dbg_ptr < end_ptr)
					dbg_ptr++;
				else
					FUNC1("Allocated buffer not enough");
			}

			if (stat != RDWR_STATUS_DONE) {
				continue;
			} else {
				FUNC2("%s done: size=0x%tx",
					entry->mem_name,
					dbg_ptr - entry->mem_ptr);
				break;
			}
		} while (1);
	}

	FUNC2("== btmrvl firmware dump end ==");

done:
	FUNC12(card->func);

	if (fw_dump_len == 0)
		return;

	fw_dump_data = FUNC17(fw_dump_len+1);
	if (!fw_dump_data) {
		FUNC1("Vzalloc fw_dump_data fail!");
		return;
	}
	fw_dump_ptr = fw_dump_data;

	/* Dump all the memory data into single file, a userspace script will
	 * be used to split all the memory data to multiple files
	 */
	FUNC2("== btmrvl firmware dump to /sys/class/devcoredump start");
	for (idx = 0; idx < dump_num; idx++) {
		struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

		if (entry->mem_ptr) {
			FUNC14(fw_dump_ptr, "========Start dump ");
			fw_dump_ptr += FUNC15("========Start dump ");

			FUNC14(fw_dump_ptr, entry->mem_name);
			fw_dump_ptr += FUNC15(entry->mem_name);

			FUNC14(fw_dump_ptr, "========\n");
			fw_dump_ptr += FUNC15("========\n");

			FUNC8(fw_dump_ptr, entry->mem_ptr, entry->mem_size);
			fw_dump_ptr += entry->mem_size;

			FUNC14(fw_dump_ptr, "\n========End dump========\n");
			fw_dump_ptr += FUNC15("\n========End dump========\n");

			FUNC16(mem_type_mapping_tbl[idx].mem_ptr);
			mem_type_mapping_tbl[idx].mem_ptr = NULL;
		}
	}

	/* fw_dump_data will be free in device coredump release function
	 * after 5 min
	 */
	FUNC6(&card->func->dev, fw_dump_data, fw_dump_len, GFP_KERNEL);
	FUNC2("== btmrvl firmware dump to /sys/class/devcoredump end");
}