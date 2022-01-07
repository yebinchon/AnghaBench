
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int * ContentTypes ;
 int snprintf (char*,int,char*,char const*,long long,char*,int) ;
 int vkprintf (int,char*) ;
 int write_basic_http_header (struct connection*,int,int ,int,char*,int ) ;
 int x_accel_redirects ;

__attribute__((used)) static int http_x_accel_redirect (struct connection *c, const char *filename, long long offset, char base64url_secret[12], int content_type) {
  static char location[256] = "X-Accel-Redirect: ";
  int r = snprintf (location + 18, 238, "%s:%llx:%s:%x\r\n", filename, offset, base64url_secret, content_type);
  if (r >= 238) {
    vkprintf (1, "location buffer overflow\n");
    return -500;
  }
  write_basic_http_header (c, 307, 0, -1, location, ContentTypes[content_type]);
  x_accel_redirects++;
  return 0;
}
