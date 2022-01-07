
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zcomp_strm {int dummy; } ;
struct zcomp {int stream; } ;


 struct zcomp_strm** get_cpu_ptr (int ) ;

struct zcomp_strm *zcomp_stream_get(struct zcomp *comp)
{
 return *get_cpu_ptr(comp->stream);
}
