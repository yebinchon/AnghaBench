
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp {int stream; } ;


 int put_cpu_ptr (int ) ;

void zcomp_stream_put(struct zcomp *comp)
{
 put_cpu_ptr(comp->stream);
}
