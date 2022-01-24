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

/* Variables and functions */
 int /*<<< orphan*/  CMO_CHARACTERISTICS_TOKEN ; 
 int CMO_MAXLENGTH ; 
 int CMO_PageSize ; 
 int CMO_PrPSP ; 
 int CMO_SecPSP ; 
 int /*<<< orphan*/  FW_FEATURE_CMO ; 
 int IOMMU_PAGE_SHIFT_4K ; 
 int /*<<< orphan*/  RTAS_DATA_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  powerpc_firmware_features ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* rtas_data_buf ; 
 int /*<<< orphan*/  rtas_data_buf_lock ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
	char *ptr, *key, *value, *end;
	int call_status;
	int page_order = IOMMU_PAGE_SHIFT_4K;

	FUNC3(" -> fw_cmo_feature_init()\n");
	FUNC8(&rtas_data_buf_lock);
	FUNC1(rtas_data_buf, 0, RTAS_DATA_BUF_SIZE);
	call_status = FUNC5(FUNC6("ibm,get-system-parameter"), 3, 1,
				NULL,
				CMO_CHARACTERISTICS_TOKEN,
				FUNC0(rtas_data_buf),
				RTAS_DATA_BUF_SIZE);

	if (call_status != 0) {
		FUNC9(&rtas_data_buf_lock);
		FUNC3("CMO not available\n");
		FUNC3(" <- fw_cmo_feature_init()\n");
		return;
	}

	end = rtas_data_buf + CMO_MAXLENGTH - 2;
	ptr = rtas_data_buf + 2;	/* step over strlen value */
	key = value = ptr;

	while (*ptr && (ptr <= end)) {
		/* Separate the key and value by replacing '=' with '\0' and
		 * point the value at the string after the '='
		 */
		if (ptr[0] == '=') {
			ptr[0] = '\0';
			value = ptr + 1;
		} else if (ptr[0] == '\0' || ptr[0] == ',') {
			/* Terminate the string containing the key/value pair */
			ptr[0] = '\0';

			if (key == value) {
				FUNC3("Malformed key/value pair\n");
				/* Never found a '=', end processing */
				break;
			}

			if (0 == FUNC10(key, "CMOPageSize"))
				page_order = FUNC7(value, NULL, 10);
			else if (0 == FUNC10(key, "PrPSP"))
				CMO_PrPSP = FUNC7(value, NULL, 10);
			else if (0 == FUNC10(key, "SecPSP"))
				CMO_SecPSP = FUNC7(value, NULL, 10);
			value = key = ptr + 1;
		}
		ptr++;
	}

	/* Page size is returned as the power of 2 of the page size,
	 * convert to the page size in bytes before returning
	 */
	CMO_PageSize = 1 << page_order;
	FUNC3("CMO_PageSize = %lu\n", CMO_PageSize);

	if (CMO_PrPSP != -1 || CMO_SecPSP != -1) {
		FUNC4("CMO enabled\n");
		FUNC3("CMO enabled, PrPSP=%d, SecPSP=%d\n", CMO_PrPSP,
		         CMO_SecPSP);
		powerpc_firmware_features |= FW_FEATURE_CMO;
		FUNC2();
	} else
		FUNC3("CMO not enabled, PrPSP=%d, SecPSP=%d\n", CMO_PrPSP,
		         CMO_SecPSP);
	FUNC9(&rtas_data_buf_lock);
	FUNC3(" <- fw_cmo_feature_init()\n");
}