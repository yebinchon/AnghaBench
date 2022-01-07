
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
typedef int dllname ;
struct TYPE_8__ {scalar_t__ nvrtc; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_9__ {int * lib; } ;
typedef TYPE_3__ NVRTC_PTR ;


 int HC_LOAD_FUNC (TYPE_3__*,int ,int ,int ,int) ;
 int NVRTC ;
 int NVRTC_NVRTCADDNAMEEXPRESSION ;
 int NVRTC_NVRTCCOMPILEPROGRAM ;
 int NVRTC_NVRTCCREATEPROGRAM ;
 int NVRTC_NVRTCDESTROYPROGRAM ;
 int NVRTC_NVRTCGETERRORSTRING ;
 int NVRTC_NVRTCGETLOWEREDNAME ;
 int NVRTC_NVRTCGETPROGRAMLOG ;
 int NVRTC_NVRTCGETPROGRAMLOGSIZE ;
 int NVRTC_NVRTCGETPTX ;
 int NVRTC_NVRTCGETPTXSIZE ;
 int NVRTC_NVRTCVERSION ;
 void* hc_dlopen (char*) ;
 int memset (TYPE_3__*,int ,int) ;
 int nvrtcAddNameExpression ;
 int nvrtcCompileProgram ;
 int nvrtcCreateProgram ;
 int nvrtcDestroyProgram ;
 int nvrtcGetErrorString ;
 int nvrtcGetLoweredName ;
 int nvrtcGetPTX ;
 int nvrtcGetPTXSize ;
 int nvrtcGetProgramLog ;
 int nvrtcGetProgramLogSize ;
 int nvrtcVersion ;
 int snprintf (char*,int,char*,int,int) ;

int nvrtc_init (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  NVRTC_PTR *nvrtc = (NVRTC_PTR *) backend_ctx->nvrtc;

  memset (nvrtc, 0, sizeof (NVRTC_PTR));
  nvrtc->lib = hc_dlopen ("libnvrtc.so");

  if (nvrtc->lib == ((void*)0)) nvrtc->lib = hc_dlopen ("libnvrtc.so.1");


  if (nvrtc->lib == ((void*)0)) return -1;

  HC_LOAD_FUNC (nvrtc, nvrtcAddNameExpression, NVRTC_NVRTCADDNAMEEXPRESSION, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcCompileProgram, NVRTC_NVRTCCOMPILEPROGRAM, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcCreateProgram, NVRTC_NVRTCCREATEPROGRAM, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcDestroyProgram, NVRTC_NVRTCDESTROYPROGRAM, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetLoweredName, NVRTC_NVRTCGETLOWEREDNAME, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetPTX, NVRTC_NVRTCGETPTX, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetPTXSize, NVRTC_NVRTCGETPTXSIZE, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetProgramLog, NVRTC_NVRTCGETPROGRAMLOG, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetProgramLogSize, NVRTC_NVRTCGETPROGRAMLOGSIZE, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcGetErrorString, NVRTC_NVRTCGETERRORSTRING, NVRTC, 1);
  HC_LOAD_FUNC (nvrtc, nvrtcVersion, NVRTC_NVRTCVERSION, NVRTC, 1);

  return 0;
}
