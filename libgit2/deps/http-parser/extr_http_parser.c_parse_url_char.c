
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum state { ____Placeholder_state } state ;


 int IS_ALPHA (char const) ;
 int IS_ALPHANUM (char const) ;
 int IS_URL_CHAR (char const) ;
 int IS_USERINFO_CHAR (char const) ;
 int s_dead ;
__attribute__((used)) static enum state
parse_url_char(enum state s, const char ch)
{
  if (ch == ' ' || ch == '\r' || ch == '\n') {
    return s_dead;
  }







  switch (s) {
    case 128:




      if (ch == '/' || ch == '*') {
        return 137;
      }




      if (IS_ALPHA(ch)) {
        return 134;
      }

      break;

    case 134:
      if (IS_ALPHANUM(ch) || ch == '+' || ch == '-' || ch == '.') {
        return s;
      }

      if (ch == ':') {
        return 133;
      }

      break;

    case 133:
      if (ch == '/') {
        return 132;
      }

      break;

    case 132:
      if (ch == '/') {
        return 130;
      }

      break;

    case 129:
      if (ch == '@') {
        return s_dead;
      }


    case 130:
    case 131:
      if (ch == '/') {
        return 137;
      }

      if (ch == '?') {
        return 135;
      }

      if (ch == '@') {
        return 129;
      }

      if (IS_USERINFO_CHAR(ch) || ch == '[' || ch == ']') {
        return 131;
      }

      break;

    case 137:
      if (IS_URL_CHAR(ch)) {
        return s;
      }

      switch (ch) {
        case '?':
          return 135;

        case '#':
          return 138;
      }

      break;

    case 135:
    case 136:
      if (IS_URL_CHAR(ch)) {
        return 136;
      }

      switch (ch) {
        case '?':

          return 136;

        case '#':
          return 138;
      }

      break;

    case 138:
      if (IS_URL_CHAR(ch)) {
        return 139;
      }

      switch (ch) {
        case '?':
          return 139;

        case '#':
          return s;
      }

      break;

    case 139:
      if (IS_URL_CHAR(ch)) {
        return s;
      }

      switch (ch) {
        case '?':
        case '#':
          return s;
      }

      break;

    default:
      break;
  }


  return s_dead;
}
