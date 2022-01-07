
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* event_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_7__ {char* msg_buf; size_t msg_len; int msg_newline; size_t prev_len; } ;
typedef TYPE_2__ event_ctx_t ;
struct TYPE_8__ {int wAttributes; } ;
typedef int HANDLE ;
typedef int FILE ;
typedef TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;


 char* EOL ;
 int const FOREGROUND_INTENSITY ;
 int const FOREGROUND_RED ;
 int GetConsoleScreenBufferInfo (int ,TYPE_3__*) ;
 int GetStdHandle (int ) ;




 int STD_OUTPUT_HANDLE ;
 int SetConsoleTextAttribute (int ,int const) ;
 int fflush (int *) ;
 int fwrite (char const*,size_t const,int,int *) ;
 int main_log_clear_line (size_t const,int *) ;
 int strlen (char*) ;

__attribute__((used)) static void main_log (hashcat_ctx_t *hashcat_ctx, FILE *fp, const int loglevel)
{
  event_ctx_t *event_ctx = hashcat_ctx->event_ctx;

  const char *msg_buf = event_ctx->msg_buf;
  const size_t msg_len = event_ctx->msg_len;
  const bool msg_newline = event_ctx->msg_newline;



  const size_t prev_len = event_ctx->prev_len;

  if (prev_len) main_log_clear_line (prev_len, fp);

  if (msg_newline == 1)
  {
    event_ctx->prev_len = 0;
  }
  else
  {
    event_ctx->prev_len = msg_len;
  }
  switch (loglevel)
  {
    case 129: break;
    case 128: fwrite ("\033[33m", 5, 1, fp); break;
    case 130: fwrite ("\033[31m", 5, 1, fp); break;
    case 131: fwrite ("\033[33m", 5, 1, fp); break;
  }




  fwrite (msg_buf, msg_len, 1, fp);
  switch (loglevel)
  {
    case 129: break;
    case 128: fwrite ("\033[0m", 4, 1, fp); break;
    case 130: fwrite ("\033[0m", 4, 1, fp); break;
    case 131: fwrite ("\033[0m", 4, 1, fp); break;
  }




  if (msg_newline == 1)
  {
    fwrite (EOL, strlen (EOL), 1, fp);



    if (loglevel == 130)
    {
      fwrite (EOL, strlen (EOL), 1, fp);
    }
  }

  fflush (fp);
}
