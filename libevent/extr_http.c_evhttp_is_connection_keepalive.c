
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evkeyvalq {int dummy; } ;


 char* evhttp_find_header (struct evkeyvalq*,char*) ;
 scalar_t__ evutil_ascii_strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
evhttp_is_connection_keepalive(struct evkeyvalq* headers)
{
 const char *connection = evhttp_find_header(headers, "Connection");
 return (connection != ((void*)0)
     && evutil_ascii_strncasecmp(connection, "keep-alive", 10) == 0);
}
