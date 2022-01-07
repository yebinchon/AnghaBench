
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int source_file ;
typedef int mrb_state ;
typedef int mrb_debug_context ;
typedef int int32_t ;


 int MRB_DEBUG_INVALID_ARGUMENT ;
 int MRB_DEBUG_OK ;
 int printf (char*,...) ;
 int show_lines (int *,int ,int ) ;
 int source_file_free (int *,int *) ;
 int * source_file_new (int *,int *,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;

int32_t
mrb_debug_list(mrb_state *mrb, mrb_debug_context *dbg, char *filename, uint16_t line_min, uint16_t line_max)
{
  char *ext;
  source_file *file;

  if (mrb == ((void*)0) || dbg == ((void*)0) || filename == ((void*)0)) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  ext = strrchr(filename, '.');

  if (ext == ((void*)0) || strcmp(ext, ".rb")) {
    printf("List command only supports .rb file.\n");
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  if (line_min > line_max) {
    return MRB_DEBUG_INVALID_ARGUMENT;
  }

  if ((file = source_file_new(mrb, dbg, filename)) != ((void*)0)) {
    show_lines(file, line_min, line_max);
    source_file_free(mrb, file);
    return MRB_DEBUG_OK;
  }
  else {
    printf("Invalid source file named %s.\n", filename);
    return MRB_DEBUG_INVALID_ARGUMENT;
  }
}
