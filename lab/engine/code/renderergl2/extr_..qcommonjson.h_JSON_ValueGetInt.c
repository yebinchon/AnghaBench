
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int JSON_NoParse (char const*,char const*) ;
 int JSON_ValueGetString (char const*,char const*,char*,int) ;
 int sscanf (char*,char*,int*) ;

int JSON_ValueGetInt(const char *json, const char *jsonEnd)
{
 char cValue[256];
 int iValue = 0;
 unsigned int np = JSON_NoParse(json, jsonEnd);

 if (np)
  return np - 1;

 if (!JSON_ValueGetString(json, jsonEnd, cValue, 256))
  return 0;

 sscanf(cValue, "%d", &iValue);

 return iValue;
}
