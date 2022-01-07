
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int force_overwrite; int current_input_path; } ;
typedef TYPE_1__ Context ;
typedef int BrotliDecoderState ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 scalar_t__ BROTLI_TRUE ;
 int * BrotliDecoderCreateInstance (int *,int *,int *) ;
 int BrotliDecoderDestroyInstance (int *) ;
 int CloseFiles (TYPE_1__*,scalar_t__) ;
 scalar_t__ DecompressFile (TYPE_1__*,int *) ;
 scalar_t__ NextFile (TYPE_1__*) ;
 scalar_t__ OpenFiles (TYPE_1__*) ;
 int STDIN_FILENO ;
 int fprintf (int ,char*) ;
 scalar_t__ isatty (int ) ;
 int stderr ;

__attribute__((used)) static BROTLI_BOOL DecompressFiles(Context* context) {
  while (NextFile(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliDecoderState* s = BrotliDecoderCreateInstance(((void*)0), ((void*)0), ((void*)0));
    if (!s) {
      fprintf(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    is_ok = OpenFiles(context);
    if (is_ok && !context->current_input_path &&
        !context->force_overwrite && isatty(STDIN_FILENO)) {
      fprintf(stderr, "Use -h help. Use -f to force input from a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = DecompressFile(context, s);
    BrotliDecoderDestroyInstance(s);
    if (!CloseFiles(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}
