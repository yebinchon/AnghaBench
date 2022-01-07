
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct http_object_request {TYPE_1__ tmpfile; } ;


 int release_http_object_request (struct http_object_request*) ;
 int unlink_or_warn (int ) ;

void abort_http_object_request(struct http_object_request *freq)
{
 unlink_or_warn(freq->tmpfile.buf);

 release_http_object_request(freq);
}
