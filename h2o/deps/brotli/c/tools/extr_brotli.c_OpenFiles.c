
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int force_overwrite; int fout; int current_output_path; int test_integrity; int fin; int current_input_path; } ;
typedef TYPE_1__ Context ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ OpenInputFile (int ,int *) ;
 scalar_t__ OpenOutputFile (int ,int *,int ) ;

__attribute__((used)) static BROTLI_BOOL OpenFiles(Context* context) {
  BROTLI_BOOL is_ok = OpenInputFile(context->current_input_path, &context->fin);
  if (!context->test_integrity && is_ok) {
    is_ok = OpenOutputFile(
        context->current_output_path, &context->fout, context->force_overwrite);
  }
  return is_ok;
}
