
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * output; int current_output_path; int fout; int current_input_path; int fin; int * input; } ;
typedef TYPE_1__ Context ;
typedef int BrotliEncoderState ;
typedef scalar_t__ BROTLI_BOOL ;


 scalar_t__ BROTLI_FALSE ;
 int BROTLI_OPERATION_FINISH ;
 int BROTLI_OPERATION_PROCESS ;
 scalar_t__ BROTLI_TRUE ;
 int BrotliEncoderCompressStream (int *,int ,size_t*,int const**,size_t*,int **,int *) ;
 scalar_t__ BrotliEncoderIsFinished (int *) ;
 char* PrintablePath (int ) ;
 int errno ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*,char*,...) ;
 size_t fread (int *,int,size_t,int ) ;
 int fwrite (int *,int,size_t,int ) ;
 size_t kFileBufferSize ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static BROTLI_BOOL CompressFile(Context* context, BrotliEncoderState* s) {
  size_t available_in = 0;
  const uint8_t* next_in = ((void*)0);
  size_t available_out = kFileBufferSize;
  uint8_t* next_out = context->output;
  BROTLI_BOOL is_eof = BROTLI_FALSE;

  for (;;) {
    if (available_in == 0 && !is_eof) {
      available_in = fread(context->input, 1, kFileBufferSize, context->fin);
      next_in = context->input;
      if (ferror(context->fin)) {
        fprintf(stderr, "failed to read input [%s]: %s\n",
                PrintablePath(context->current_input_path), strerror(errno));
        return BROTLI_FALSE;
      }
      is_eof = feof(context->fin) ? BROTLI_TRUE : BROTLI_FALSE;
    }

    if (!BrotliEncoderCompressStream(s,
        is_eof ? BROTLI_OPERATION_FINISH : BROTLI_OPERATION_PROCESS,
        &available_in, &next_in, &available_out, &next_out, ((void*)0))) {

      fprintf(stderr, "failed to compress data [%s]\n",
              PrintablePath(context->current_input_path));
      return BROTLI_FALSE;
    }

    if (available_out != kFileBufferSize) {
      size_t out_size = kFileBufferSize - available_out;
      fwrite(context->output, 1, out_size, context->fout);
      if (ferror(context->fout)) {
        fprintf(stderr, "failed to write output [%s]: %s\n",
                PrintablePath(context->current_output_path), strerror(errno));
        return BROTLI_FALSE;
      }
      available_out = kFileBufferSize;
      next_out = context->output;
    }

    if (BrotliEncoderIsFinished(s)) return BROTLI_TRUE;
  }
}
