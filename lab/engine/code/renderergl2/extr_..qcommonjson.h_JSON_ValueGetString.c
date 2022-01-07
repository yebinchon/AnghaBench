
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* JSON_SkipValue (char const*,char const*) ;

unsigned int JSON_ValueGetString(const char *json, const char *jsonEnd, char *outString, unsigned int stringLen)
{
 const char *stringEnd, *stringStart;

 if (!json)
 {
  *outString = '\0';
  return 0;
 }

 stringStart = json;
 stringEnd = JSON_SkipValue(stringStart, jsonEnd);
 if (stringEnd >= jsonEnd)
 {
  *outString = '\0';
  return 0;
 }


 if (*stringStart == '"')
  stringStart++;

 if (*(stringEnd - 1) == '"')
  stringEnd--;

 stringLen--;
 if (stringLen > stringEnd - stringStart)
  stringLen = stringEnd - stringStart;

 json = stringStart;
 while (stringLen--)
  *outString++ = *json++;
 *outString = '\0';

 return stringEnd - stringStart;
}
