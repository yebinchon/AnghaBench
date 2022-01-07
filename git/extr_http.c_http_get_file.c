
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct http_get_options {int dummy; } ;
typedef int FILE ;


 int HTTP_ERROR ;
 int HTTP_OK ;
 int HTTP_REQUEST_FILE ;
 struct strbuf STRBUF_INIT ;
 int error (char*,int ) ;
 int fclose (int *) ;
 scalar_t__ finalize_object_file (int ,char const*) ;
 int * fopen (int ,char*) ;
 int http_request_reauth (char const*,int *,int ,struct http_get_options*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int http_get_file(const char *url, const char *filename,
    struct http_get_options *options)
{
 int ret;
 struct strbuf tmpfile = STRBUF_INIT;
 FILE *result;

 strbuf_addf(&tmpfile, "%s.temp", filename);
 result = fopen(tmpfile.buf, "a");
 if (!result) {
  error("Unable to open local file %s", tmpfile.buf);
  ret = HTTP_ERROR;
  goto cleanup;
 }

 ret = http_request_reauth(url, result, HTTP_REQUEST_FILE, options);
 fclose(result);

 if (ret == HTTP_OK && finalize_object_file(tmpfile.buf, filename))
  ret = HTTP_ERROR;
cleanup:
 strbuf_release(&tmpfile);
 return ret;
}
