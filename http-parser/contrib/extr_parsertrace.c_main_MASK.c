#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  settings ;
struct TYPE_4__ {int /*<<< orphan*/  on_message_complete; int /*<<< orphan*/  on_body; int /*<<< orphan*/  on_headers_complete; int /*<<< orphan*/  on_header_value; int /*<<< orphan*/  on_header_field; int /*<<< orphan*/  on_url; int /*<<< orphan*/  on_message_begin; } ;
typedef  TYPE_1__ http_parser_settings ;
typedef  int /*<<< orphan*/  http_parser ;
typedef  enum http_parser_type { ____Placeholder_http_parser_type } http_parser_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int HTTP_BOTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int HTTP_REQUEST ; 
 int HTTP_RESPONSE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,char*,long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 char* FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  on_body ; 
 int /*<<< orphan*/  on_header_field ; 
 int /*<<< orphan*/  on_header_value ; 
 int /*<<< orphan*/  on_headers_complete ; 
 int /*<<< orphan*/  on_message_begin ; 
 int /*<<< orphan*/  on_message_complete ; 
 int /*<<< orphan*/  on_url ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

int FUNC16(int argc, char* argv[]) {
  enum http_parser_type file_type;

  if (argc != 3) {
    FUNC15(argv[0]);
  }

  char* type = argv[1];
  if (type[0] != '-') {
    FUNC15(argv[0]);
  }

  switch (type[1]) {
    /* in the case of "-", type[1] will be NUL */
    case 'r':
      file_type = HTTP_RESPONSE;
      break;
    case 'q':
      file_type = HTTP_REQUEST;
      break;
    case 'b':
      file_type = HTTP_BOTH;
      break;
    default:
      FUNC15(argv[0]);
  }

  char* filename = argv[2];
  FILE* file = FUNC2(filename, "r");
  if (file == NULL) {
    FUNC14("fopen");
    goto fail;
  }

  FUNC6(file, 0, SEEK_END);
  long file_length = FUNC7(file);
  if (file_length == -1) {
    FUNC14("ftell");
    goto fail;
  }
  FUNC6(file, 0, SEEK_SET);

  char* data = FUNC12(file_length);
  if (FUNC4(data, 1, file_length, file) != (size_t)file_length) {
    FUNC3(stderr, "couldn't read entire file\n");
    FUNC5(data);
    goto fail;
  }

  http_parser_settings settings;
  FUNC13(&settings, 0, sizeof(settings));
  settings.on_message_begin = on_message_begin;
  settings.on_url = on_url;
  settings.on_header_field = on_header_field;
  settings.on_header_value = on_header_value;
  settings.on_headers_complete = on_headers_complete;
  settings.on_body = on_body;
  settings.on_message_complete = on_message_complete;

  http_parser parser;
  FUNC11(&parser, file_type);
  size_t nparsed = FUNC10(&parser, &settings, data, file_length);
  FUNC5(data);

  if (nparsed != (size_t)file_length) {
    FUNC3(stderr,
            "Error: %s (%s)\n",
            FUNC8(FUNC0(&parser)),
            FUNC9(FUNC0(&parser)));
    goto fail;
  }

  return EXIT_SUCCESS;

fail:
  FUNC1(file);
  return EXIT_FAILURE;
}