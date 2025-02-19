
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {char const** argv; int in; int git_cmd; int clean_on_exit; int wait_after_clean; int env_array; } ;
typedef scalar_t__ ssize_t ;


 struct child_process CHILD_PROCESS_INIT ;
 int argv_array_pushf (int *,char*,char const*,...) ;
 int close (int) ;
 int copy_request (char const*,int,scalar_t__) ;
 int exit (int) ;
 scalar_t__ finish_command (struct child_process*) ;
 scalar_t__ get_content_length () ;
 char* getenv (char*) ;
 int inflate_request (char const*,int,int,scalar_t__) ;
 int pipe_fixed_length (char const*,int,scalar_t__) ;
 scalar_t__ start_command (struct child_process*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void run_service(const char **argv, int buffer_input)
{
 const char *encoding = getenv("HTTP_CONTENT_ENCODING");
 const char *user = getenv("REMOTE_USER");
 const char *host = getenv("REMOTE_ADDR");
 int gzipped_request = 0;
 struct child_process cld = CHILD_PROCESS_INIT;
 ssize_t req_len = get_content_length();

 if (encoding && !strcmp(encoding, "gzip"))
  gzipped_request = 1;
 else if (encoding && !strcmp(encoding, "x-gzip"))
  gzipped_request = 1;

 if (!user || !*user)
  user = "anonymous";
 if (!host || !*host)
  host = "(none)";

 if (!getenv("GIT_COMMITTER_NAME"))
  argv_array_pushf(&cld.env_array, "GIT_COMMITTER_NAME=%s", user);
 if (!getenv("GIT_COMMITTER_EMAIL"))
  argv_array_pushf(&cld.env_array,
     "GIT_COMMITTER_EMAIL=%s@http.%s", user, host);

 cld.argv = argv;
 if (buffer_input || gzipped_request || req_len >= 0)
  cld.in = -1;
 cld.git_cmd = 1;
 cld.clean_on_exit = 1;
 cld.wait_after_clean = 1;
 if (start_command(&cld))
  exit(1);

 close(1);
 if (gzipped_request)
  inflate_request(argv[0], cld.in, buffer_input, req_len);
 else if (buffer_input)
  copy_request(argv[0], cld.in, req_len);
 else if (req_len >= 0)
  pipe_fixed_length(argv[0], cld.in, req_len);
 else
  close(0);

 if (finish_command(&cld))
  exit(1);
}
