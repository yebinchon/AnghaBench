
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int POST_DATA ;
 int evbuffer_add (void*,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void http_add_output_buffer(int fd, short events, void *arg)
{
 evbuffer_add(arg, POST_DATA, strlen(POST_DATA));
}
