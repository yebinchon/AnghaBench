
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IS_STRUCT_CLOSE (char const) ;
 char* JSON_SkipSeparators (char const*,char const*) ;
 char* JSON_SkipValueAndSeparators (char const*,char const*) ;

__attribute__((used)) static const char *JSON_SkipStruct(const char *json, const char *jsonEnd)
{
 json = JSON_SkipSeparators(json + 1, jsonEnd);
 while (json < jsonEnd && !IS_STRUCT_CLOSE(*json))
  json = JSON_SkipValueAndSeparators(json, jsonEnd);

 return (json + 1 > jsonEnd) ? jsonEnd : json + 1;
}
