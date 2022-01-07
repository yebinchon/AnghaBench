
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; size_t buf_valid_len; scalar_t__ curr_file; scalar_t__ nfiles; int * current_input; int * parser; scalar_t__ current_line; int failures; int err_cb_data; int (* err_cb ) (int ,char const*) ;void* current_filename; } ;
typedef TYPE_1__ jq_util_input_state ;


 scalar_t__ EINTR ;
 int clearerr (int *) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int jv_free (void*) ;
 void* jv_invalid () ;
 void* jv_string (char const*) ;
 char* memchr (char*,char,int) ;
 int memset (char*,int,int) ;
 char* next_file (TYPE_1__*) ;
 int stderr ;
 int * stdin ;
 int strcmp (char const*,char*) ;
 char* strerror (scalar_t__) ;
 size_t strlen (char*) ;
 int stub1 (int ,char const*) ;

__attribute__((used)) static int jq_util_input_read_more(jq_util_input_state *state) {
  if (!state->current_input || feof(state->current_input) || ferror(state->current_input)) {
    if (state->current_input && ferror(state->current_input)) {



      fprintf(stderr,"jq: error: %s\n", strerror(errno));
    }
    if (state->current_input) {
      if (state->current_input == stdin) {
        clearerr(stdin);
      } else {
        fclose(state->current_input);
      }
      state->current_input = ((void*)0);
      jv_free(state->current_filename);
      state->current_filename = jv_invalid();
      state->current_line = 0 ;
    }
    const char *f = next_file(state);
    if (f != ((void*)0)) {
      if (!strcmp(f, "-")) {
        state->current_input = stdin;
        state->current_filename = jv_string("<stdin>");
      } else {
        state->current_input = fopen(f, "r");
        state->current_filename = jv_string(f);
        if (!state->current_input) {
          state->err_cb(state->err_cb_data, f);
          state->failures++;
        }
      }
      state->current_line = 0;
    }
  }

  state->buf[0] = 0;
  state->buf_valid_len = 0;
  if (state->current_input) {
    char *res;
    memset(state->buf, 0xff, sizeof(state->buf));

    while (!(res = fgets(state->buf, sizeof(state->buf), state->current_input)) &&
           ferror(state->current_input) && errno == EINTR)
      clearerr(state->current_input);
    if (res == ((void*)0)) {
      state->buf[0] = 0;
      if (ferror(state->current_input))
        state->failures++;
    } else {
      const char *p = memchr(state->buf, '\n', sizeof(state->buf));

      if (p != ((void*)0))
        state->current_line++;

      if (p == ((void*)0) && state->parser != ((void*)0)) {




        state->buf_valid_len = strlen(state->buf);
      } else if (p == ((void*)0) && feof(state->current_input)) {
        size_t i;
        for (p = state->buf, i = sizeof(state->buf) - 1; i > 0; i--) {
          if (state->buf[i] == '\0')
            break;
        }
        state->buf_valid_len = i;
      } else if (p == ((void*)0)) {
        state->buf_valid_len = sizeof(state->buf) - 1;
      } else {
        state->buf_valid_len = (p - state->buf) + 1;
      }
    }
  }
  return state->curr_file == state->nfiles &&
      (!state->current_input || feof(state->current_input) || ferror(state->current_input));
}
