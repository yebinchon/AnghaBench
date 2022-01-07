
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;
typedef int CUmodule ;
typedef int CUjit_option ;


 int CU_JIT_ERROR_LOG_BUFFER ;
 int CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES ;
 int CU_JIT_INFO_LOG_BUFFER ;
 int CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES ;
 int CU_JIT_LOG_VERBOSE ;
 int CU_JIT_TARGET_FROM_CUCONTEXT ;
 scalar_t__ LOG_SIZE ;
 int hc_cuModuleLoadDataEx (int *,int *,void const*,int,int *,void**) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (scalar_t__) ;
 int printf (char*,int,char*) ;
 scalar_t__ strlen (char*) ;

int hc_cuModuleLoadDataExLog (hashcat_ctx_t *hashcat_ctx, CUmodule *module, const void *image)
{


  char *info_log = (char *) hcmalloc (8192);
  char *error_log = (char *) hcmalloc (8192);

  CUjit_option opts[6];
  void *vals[6];

  opts[0] = CU_JIT_TARGET_FROM_CUCONTEXT;
  vals[0] = (void *) 0;

  opts[1] = CU_JIT_LOG_VERBOSE;
  vals[1] = (void *) 1;

  opts[2] = CU_JIT_INFO_LOG_BUFFER;
  vals[2] = (void *) info_log;

  opts[3] = CU_JIT_INFO_LOG_BUFFER_SIZE_BYTES;
  vals[3] = (void *) 8192;

  opts[4] = CU_JIT_ERROR_LOG_BUFFER;
  vals[4] = (void *) error_log;

  opts[5] = CU_JIT_ERROR_LOG_BUFFER_SIZE_BYTES;
  vals[5] = (void *) 8192;

  const int rc_cuModuleLoadDataEx = hc_cuModuleLoadDataEx (hashcat_ctx, module, image, 6, opts, vals);





  if (rc_cuModuleLoadDataEx == -1)
  {
    printf ("cuModuleLoadDataEx() Info Log (%d):\n%s\n\n", (int) strlen (info_log), info_log);
    printf ("cuModuleLoadDataEx() Error Log (%d):\n%s\n\n", (int) strlen (error_log), error_log);
  }


  hcfree (info_log);
  hcfree (error_log);

  return rc_cuModuleLoadDataEx;
}
