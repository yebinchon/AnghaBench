
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int emit (char*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static void emit_extent(const char *start, const char *end)
{
  char buf[32+1];
  size_t bufmax = sizeof(buf) - 1;
  buf[32] = 0;

  size_t bytes = end - start + 1;

  while (bytes >= bufmax)
  {
    memcpy(buf, start, bufmax);
    emit(buf);
    bytes -= bufmax;
    start += bufmax;
  }

  if (bytes == 0)
    return;

  memcpy(buf, start, bytes);
  buf[bytes] = 0;
  emit(buf);
}
