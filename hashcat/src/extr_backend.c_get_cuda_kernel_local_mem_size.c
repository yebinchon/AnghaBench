
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;
typedef int CUfunction ;


 int CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES ;
 int hc_cuFuncGetAttribute (int *,int*,int ,int ) ;

__attribute__((used)) static int get_cuda_kernel_local_mem_size (hashcat_ctx_t *hashcat_ctx, CUfunction function, u64 *result)
{
  int shared_size_bytes;

  if (hc_cuFuncGetAttribute (hashcat_ctx, &shared_size_bytes, CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES, function) == -1) return -1;

  *result = (u64) shared_size_bytes;

  return 0;
}
