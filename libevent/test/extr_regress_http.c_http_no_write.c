
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_cb_info {int dummy; } ;
struct evbuffer {int dummy; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int stdout ;

__attribute__((used)) static void
http_no_write(struct evbuffer *buffer, const struct evbuffer_cb_info *info, void *arg)
{
 fprintf(stdout, "FAILED\n");
 exit(1);
}
