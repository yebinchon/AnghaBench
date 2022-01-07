
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GJSON ;


 scalar_t__ escape_html_output ;
 int pjson (int *,char*,...) ;
 int snprintf (char*,int,char*,char) ;

__attribute__((used)) static void
escape_json_other (GJSON * json, char **s)
{
  if (escape_html_output) {
    switch (**s) {
    case '\'':
      pjson (json, "&#39;");
      return;
    case '&':
      pjson (json, "&amp;");
      return;
    case '<':
      pjson (json, "&lt;");
      return;
    case '>':
      pjson (json, "&gt;");
      return;
    }
  }

  if ((uint8_t) ** s <= 0x1f) {

    char buf[8];
    snprintf (buf, sizeof buf, "\\u%04x", **s);
    pjson (json, "%s", buf);
  } else if ((uint8_t) ** s == 0xe2 && (uint8_t) * (*s + 1) == 0x80 &&
             (uint8_t) * (*s + 2) == 0xa8) {

    pjson (json, "\\u2028");
    *s += 2;
  } else if ((uint8_t) ** s == 0xe2 && (uint8_t) * (*s + 1) == 0x80 &&
             (uint8_t) * (*s + 2) == 0xa9) {

    pjson (json, "\\u2029");
    *s += 2;
  } else {
    char buf[2];
    snprintf (buf, sizeof buf, "%c", **s);
    pjson (json, "%s", buf);
  }
}
