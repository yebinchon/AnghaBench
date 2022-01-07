
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMO_CHARACTERISTICS_TOKEN ;
 int CMO_MAXLENGTH ;
 int CMO_PageSize ;
 int CMO_PrPSP ;
 int CMO_SecPSP ;
 int FW_FEATURE_CMO ;
 int IOMMU_PAGE_SHIFT_4K ;
 int RTAS_DATA_BUF_SIZE ;
 int __pa (char*) ;
 int memset (char*,int ,int ) ;
 int pSeries_coalesce_init () ;
 int powerpc_firmware_features ;
 int pr_debug (char*,...) ;
 int pr_info (char*) ;
 int rtas_call (int ,int,int,int *,int ,int ,int ) ;
 char* rtas_data_buf ;
 int rtas_data_buf_lock ;
 int rtas_token (char*) ;
 int simple_strtol (char*,int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void pSeries_cmo_feature_init(void)
{
 char *ptr, *key, *value, *end;
 int call_status;
 int page_order = IOMMU_PAGE_SHIFT_4K;

 pr_debug(" -> fw_cmo_feature_init()\n");
 spin_lock(&rtas_data_buf_lock);
 memset(rtas_data_buf, 0, RTAS_DATA_BUF_SIZE);
 call_status = rtas_call(rtas_token("ibm,get-system-parameter"), 3, 1,
    ((void*)0),
    CMO_CHARACTERISTICS_TOKEN,
    __pa(rtas_data_buf),
    RTAS_DATA_BUF_SIZE);

 if (call_status != 0) {
  spin_unlock(&rtas_data_buf_lock);
  pr_debug("CMO not available\n");
  pr_debug(" <- fw_cmo_feature_init()\n");
  return;
 }

 end = rtas_data_buf + CMO_MAXLENGTH - 2;
 ptr = rtas_data_buf + 2;
 key = value = ptr;

 while (*ptr && (ptr <= end)) {



  if (ptr[0] == '=') {
   ptr[0] = '\0';
   value = ptr + 1;
  } else if (ptr[0] == '\0' || ptr[0] == ',') {

   ptr[0] = '\0';

   if (key == value) {
    pr_debug("Malformed key/value pair\n");

    break;
   }

   if (0 == strcmp(key, "CMOPageSize"))
    page_order = simple_strtol(value, ((void*)0), 10);
   else if (0 == strcmp(key, "PrPSP"))
    CMO_PrPSP = simple_strtol(value, ((void*)0), 10);
   else if (0 == strcmp(key, "SecPSP"))
    CMO_SecPSP = simple_strtol(value, ((void*)0), 10);
   value = key = ptr + 1;
  }
  ptr++;
 }




 CMO_PageSize = 1 << page_order;
 pr_debug("CMO_PageSize = %lu\n", CMO_PageSize);

 if (CMO_PrPSP != -1 || CMO_SecPSP != -1) {
  pr_info("CMO enabled\n");
  pr_debug("CMO enabled, PrPSP=%d, SecPSP=%d\n", CMO_PrPSP,
           CMO_SecPSP);
  powerpc_firmware_features |= FW_FEATURE_CMO;
  pSeries_coalesce_init();
 } else
  pr_debug("CMO not enabled, PrPSP=%d, SecPSP=%d\n", CMO_PrPSP,
           CMO_SecPSP);
 spin_unlock(&rtas_data_buf_lock);
 pr_debug(" <- fw_cmo_feature_init()\n");
}
