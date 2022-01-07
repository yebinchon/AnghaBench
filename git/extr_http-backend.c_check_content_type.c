
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int end_headers (struct strbuf*) ;
 int exit (int ) ;
 int format_write (int,char*,char const*,char const*) ;
 char* getenv (char*) ;
 int hdr_nocache (struct strbuf*) ;
 int http_status (struct strbuf*,int,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static void check_content_type(struct strbuf *hdr, const char *accepted_type)
{
 const char *actual_type = getenv("CONTENT_TYPE");

 if (!actual_type)
  actual_type = "";

 if (strcmp(actual_type, accepted_type)) {
  http_status(hdr, 415, "Unsupported Media Type");
  hdr_nocache(hdr);
  end_headers(hdr);
  format_write(1,
   "Expected POST with Content-Type '%s',"
   " but received '%s' instead.\n",
   accepted_type, actual_type);
  exit(0);
 }
}
