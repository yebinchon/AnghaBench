
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int JSONTYPE_ARRAY ;
 unsigned int JSONTYPE_ERROR ;
 unsigned int JSONTYPE_OBJECT ;
 unsigned int JSONTYPE_STRING ;
 unsigned int JSONTYPE_VALUE ;

unsigned int JSON_ValueGetType(const char *json, const char *jsonEnd)
{
 if (!json || json >= jsonEnd)
  return JSONTYPE_ERROR;
 else if (*json == '"')
  return JSONTYPE_STRING;
 else if (*json == '{')
  return JSONTYPE_OBJECT;
 else if (*json == '[')
  return JSONTYPE_ARRAY;

 return JSONTYPE_VALUE;
}
