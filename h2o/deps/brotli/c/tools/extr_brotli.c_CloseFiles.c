
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fout; int * fin; scalar_t__ current_input_path; scalar_t__ junk_source; scalar_t__ current_output_path; scalar_t__ copy_stat; int test_integrity; } ;
typedef TYPE_1__ Context ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 scalar_t__ BROTLI_TRUE ;
 int CopyStat (scalar_t__,scalar_t__) ;
 char* PrintablePath (scalar_t__) ;
 int errno ;
 scalar_t__ fclose (int *) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int unlink (scalar_t__) ;

__attribute__((used)) static BROTLI_BOOL CloseFiles(Context* context, BROTLI_BOOL success) {
  BROTLI_BOOL is_ok = BROTLI_TRUE;
  if (!context->test_integrity && context->fout) {
    if (!success && context->current_output_path) {
      unlink(context->current_output_path);
    }
    if (fclose(context->fout) != 0) {
      if (success) {
        fprintf(stderr, "fclose failed [%s]: %s\n",
                PrintablePath(context->current_output_path), strerror(errno));
      }
      is_ok = BROTLI_FALSE;
    }


    if (success && is_ok && context->copy_stat) {
      CopyStat(context->current_input_path, context->current_output_path);
    }
  }

  if (context->fin) {
    if (fclose(context->fin) != 0) {
      if (is_ok) {
        fprintf(stderr, "fclose failed [%s]: %s\n",
                PrintablePath(context->current_input_path), strerror(errno));
      }
      is_ok = BROTLI_FALSE;
    }
  }
  if (success && context->junk_source && context->current_input_path) {
    unlink(context->current_input_path);
  }

  context->fin = ((void*)0);
  context->fout = ((void*)0);

  return is_ok;
}
