
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GJSON ;


 int escape_json_other (int *,char**) ;
 int pjson (int *,char*) ;

__attribute__((used)) static void
escape_json_output (GJSON * json, char *s)
{
  while (*s) {
    switch (*s) {

    case '"':
      pjson (json, "\\\"");
      break;
    case '\\':
      pjson (json, "\\\\");
      break;
    case '\b':
      pjson (json, "\\b");
      break;
    case '\f':
      pjson (json, "\\f");
      break;
    case '\n':
      pjson (json, "\\n");
      break;
    case '\r':
      pjson (json, "\\r");
      break;
    case '\t':
      pjson (json, "\\t");
      break;
    case '/':
      pjson (json, "\\/");
      break;
    default:
      escape_json_other (json, &s);
      break;
    }
    s++;
  }
}
