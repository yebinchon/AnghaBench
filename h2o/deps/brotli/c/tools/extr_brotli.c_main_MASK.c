#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_5__ {int quality; int longest_path_len; int argc; char** argv; char* modified_path; char* buffer; char* input; char* output; void* iterator_error; int /*<<< orphan*/  suffix; int /*<<< orphan*/ * fout; int /*<<< orphan*/ * fin; int /*<<< orphan*/ * current_output_path; int /*<<< orphan*/ * current_input_path; scalar_t__ ignore; scalar_t__ iterator; scalar_t__ input_count; scalar_t__* not_input_indices; int /*<<< orphan*/ * output_path; void* decompress; void* write_to_stdout; void* verbose; void* test_integrity; void* copy_stat; void* junk_source; void* force_overwrite; int /*<<< orphan*/  lgwin; } ;
typedef  TYPE_1__ Context ;
typedef  int Command ;
typedef  int BROTLI_BOOL ;

/* Variables and functions */
 void* BROTLI_FALSE ; 
 void* BROTLI_TRUE ; 
#define  COMMAND_COMPRESS 134 
#define  COMMAND_DECOMPRESS 133 
#define  COMMAND_HELP 132 
#define  COMMAND_INVALID 131 
#define  COMMAND_NOOP 130 
#define  COMMAND_TEST_INTEGRITY 129 
#define  COMMAND_VERSION 128 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DEFAULT_LGWIN ; 
 int /*<<< orphan*/  DEFAULT_SUFFIX ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int MAX_OPTIONS ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int kFileBufferSize ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(int argc, char** argv) {
  Command command;
  Context context;
  BROTLI_BOOL is_ok = BROTLI_TRUE;
  int i;

  context.quality = 11;
  context.lgwin = DEFAULT_LGWIN;
  context.force_overwrite = BROTLI_FALSE;
  context.junk_source = BROTLI_FALSE;
  context.copy_stat = BROTLI_TRUE;
  context.test_integrity = BROTLI_FALSE;
  context.verbose = BROTLI_FALSE;
  context.write_to_stdout = BROTLI_FALSE;
  context.decompress = BROTLI_FALSE;
  context.output_path = NULL;
  context.suffix = DEFAULT_SUFFIX;
  for (i = 0; i < MAX_OPTIONS; ++i) context.not_input_indices[i] = 0;
  context.longest_path_len = 1;
  context.input_count = 0;

  context.argc = argc;
  context.argv = argv;
  context.modified_path = NULL;
  context.iterator = 0;
  context.ignore = 0;
  context.iterator_error = BROTLI_FALSE;
  context.buffer = NULL;
  context.current_input_path = NULL;
  context.current_output_path = NULL;
  context.fin = NULL;
  context.fout = NULL;

  command = FUNC3(&context);

  if (command == COMMAND_COMPRESS || command == COMMAND_DECOMPRESS ||
      command == COMMAND_TEST_INTEGRITY) {
    if (is_ok) {
      size_t modified_path_len =
          context.longest_path_len + FUNC10(context.suffix) + 1;
      context.modified_path = (char*)FUNC9(modified_path_len);
      context.buffer = (uint8_t*)FUNC9(kFileBufferSize * 2);
      if (!context.modified_path || !context.buffer) {
        FUNC7(stderr, "out of memory\n");
        is_ok = BROTLI_FALSE;
      } else {
        context.input = context.buffer;
        context.output = context.buffer + kFileBufferSize;
      }
    }
  }

  if (!is_ok) command = COMMAND_NOOP;

  switch (command) {
    case COMMAND_NOOP:
      break;

    case COMMAND_VERSION:
      FUNC5();
      break;

    case COMMAND_COMPRESS:
      is_ok = FUNC0(&context);
      break;

    case COMMAND_DECOMPRESS:
    case COMMAND_TEST_INTEGRITY:
      is_ok = FUNC1(&context);
      break;

    case COMMAND_HELP:
    case COMMAND_INVALID:
    default:
      FUNC4(FUNC2(argv[0]));
      is_ok = (command == COMMAND_HELP);
      break;
  }

  if (context.iterator_error) is_ok = BROTLI_FALSE;

  FUNC8(context.modified_path);
  FUNC8(context.buffer);

  if (!is_ok) FUNC6(1);
  return 0;
}