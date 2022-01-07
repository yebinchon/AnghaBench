
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int force_overwrite; int current_output_path; scalar_t__ lgwin; scalar_t__ quality; } ;
typedef TYPE_1__ Context ;
typedef int BrotliEncoderState ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 int BROTLI_PARAM_LGWIN ;
 int BROTLI_PARAM_QUALITY ;
 scalar_t__ BROTLI_TRUE ;
 int * BrotliEncoderCreateInstance (int *,int *,int *) ;
 int BrotliEncoderDestroyInstance (int *) ;
 int BrotliEncoderSetParameter (int *,int ,int ) ;
 int CloseFiles (TYPE_1__*,scalar_t__) ;
 scalar_t__ CompressFile (TYPE_1__*,int *) ;
 scalar_t__ NextFile (TYPE_1__*) ;
 scalar_t__ OpenFiles (TYPE_1__*) ;
 int STDOUT_FILENO ;
 int fprintf (int ,char*) ;
 scalar_t__ isatty (int ) ;
 int stderr ;

__attribute__((used)) static BROTLI_BOOL CompressFiles(Context* context) {
  while (NextFile(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliEncoderState* s = BrotliEncoderCreateInstance(((void*)0), ((void*)0), ((void*)0));
    if (!s) {
      fprintf(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    BrotliEncoderSetParameter(s,
        BROTLI_PARAM_QUALITY, (uint32_t)context->quality);
    BrotliEncoderSetParameter(s,
        BROTLI_PARAM_LGWIN, (uint32_t)context->lgwin);
    is_ok = OpenFiles(context);
    if (is_ok && !context->current_output_path &&
        !context->force_overwrite && isatty(STDOUT_FILENO)) {
      fprintf(stderr, "Use -h help. Use -f to force output to a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = CompressFile(context, s);
    BrotliEncoderDestroyInstance(s);
    if (!CloseFiles(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
