
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* NvAPI_GetErrorMessage ) (int const,int ) ;} ;
typedef int NvAPI_Status ;
typedef int NvAPI_ShortString ;
typedef TYPE_1__ NVAPI_PTR ;


 int stub1 (int const,int ) ;

__attribute__((used)) static void hm_NvAPI_GetErrorMessage (NVAPI_PTR *nvapi, const NvAPI_Status NvAPI_rc, NvAPI_ShortString string)
{
  nvapi->NvAPI_GetErrorMessage (NvAPI_rc, string);
}
