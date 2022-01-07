
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_2__ {scalar_t__ verbose; } ;


 TYPE_1__ options ;
 scalar_t__ qtrue ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static int vreport (const char* fmt, va_list vp)
{
  if (options.verbose != qtrue)
      return 0;
  return vprintf(fmt, vp);
}
