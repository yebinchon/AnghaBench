
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int settings ;
struct TYPE_4__ {int on_message_complete; int on_body; int on_headers_complete; int on_header_value; int on_header_field; int on_url; int on_message_begin; } ;
typedef TYPE_1__ http_parser_settings ;
typedef int http_parser ;
typedef enum http_parser_type { ____Placeholder_http_parser_type } http_parser_type ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int HTTP_BOTH ;
 int HTTP_PARSER_ERRNO (int *) ;
 int HTTP_REQUEST ;
 int HTTP_RESPONSE ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,long,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 char* http_errno_description (int ) ;
 char* http_errno_name (int ) ;
 size_t http_parser_execute (int *,TYPE_1__*,char*,long) ;
 int http_parser_init (int *,int) ;
 char* malloc (long) ;
 int memset (TYPE_1__*,int ,int) ;
 int on_body ;
 int on_header_field ;
 int on_header_value ;
 int on_headers_complete ;
 int on_message_begin ;
 int on_message_complete ;
 int on_url ;
 int perror (char*) ;
 int stderr ;
 int usage (char*) ;

int main(int argc, char* argv[]) {
  enum http_parser_type file_type;

  if (argc != 3) {
    usage(argv[0]);
  }

  char* type = argv[1];
  if (type[0] != '-') {
    usage(argv[0]);
  }

  switch (type[1]) {

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
      usage(argv[0]);
  }

  char* filename = argv[2];
  FILE* file = fopen(filename, "r");
  if (file == ((void*)0)) {
    perror("fopen");
    goto fail;
  }

  fseek(file, 0, SEEK_END);
  long file_length = ftell(file);
  if (file_length == -1) {
    perror("ftell");
    goto fail;
  }
  fseek(file, 0, SEEK_SET);

  char* data = malloc(file_length);
  if (fread(data, 1, file_length, file) != (size_t)file_length) {
    fprintf(stderr, "couldn't read entire file\n");
    free(data);
    goto fail;
  }

  http_parser_settings settings;
  memset(&settings, 0, sizeof(settings));
  settings.on_message_begin = on_message_begin;
  settings.on_url = on_url;
  settings.on_header_field = on_header_field;
  settings.on_header_value = on_header_value;
  settings.on_headers_complete = on_headers_complete;
  settings.on_body = on_body;
  settings.on_message_complete = on_message_complete;

  http_parser parser;
  http_parser_init(&parser, file_type);
  size_t nparsed = http_parser_execute(&parser, &settings, data, file_length);
  free(data);

  if (nparsed != (size_t)file_length) {
    fprintf(stderr,
            "Error: %s (%s)\n",
            http_errno_description(HTTP_PARSER_ERRNO(&parser)),
            http_errno_name(HTTP_PARSER_ERRNO(&parser)));
    goto fail;
  }

  return EXIT_SUCCESS;

fail:
  fclose(file);
  return EXIT_FAILURE;
}
