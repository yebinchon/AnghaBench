
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_must_pass_ (int ,char*) ;
 int free (char*) ;
 int shell_out (char**) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
fs_copy(const char *_source, const char *dest)
{
 char *argv[5];
 char *source;
 size_t source_len;

 source = strdup(_source);
 source_len = strlen(source);

 if (source[source_len - 1] == '/')
  source[source_len - 1] = 0;

 argv[0] = "/bin/cp";
 argv[1] = "-R";
 argv[2] = source;
 argv[3] = (char *)dest;
 argv[4] = ((void*)0);

 cl_must_pass_(
  shell_out(argv),
  "Failed to copy test fixtures to sandbox"
 );

 free(source);
}
