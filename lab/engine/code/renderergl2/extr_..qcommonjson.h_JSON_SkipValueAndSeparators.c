
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* JSON_SkipSeparators (char const*,char const*) ;
 char* JSON_SkipValue (char const*,char const*) ;

__attribute__((used)) static const char *JSON_SkipValueAndSeparators(const char *json, const char *jsonEnd)
{
 json = JSON_SkipValue(json, jsonEnd);
 return JSON_SkipSeparators(json, jsonEnd);
}
