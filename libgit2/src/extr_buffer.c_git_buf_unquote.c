
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_INVALID ;
 int git_buf_rtrim (TYPE_1__*) ;
 int git_error_set (int ,char*,...) ;

int git_buf_unquote(git_buf *buf)
{
 size_t i, j;
 char ch;

 git_buf_rtrim(buf);

 if (buf->size < 2 || buf->ptr[0] != '"' || buf->ptr[buf->size-1] != '"')
  goto invalid;

 for (i = 0, j = 1; j < buf->size-1; i++, j++) {
  ch = buf->ptr[j];

  if (ch == '\\') {
   if (j == buf->size-2)
    goto invalid;

   ch = buf->ptr[++j];

   switch (ch) {

   case '"': case '\\':
    break;


   case 'a': ch = '\a'; break;
   case 'b': ch = '\b'; break;
   case 'f': ch = '\f'; break;
   case 'n': ch = '\n'; break;
   case 'r': ch = '\r'; break;
   case 't': ch = '\t'; break;
   case 'v': ch = '\v'; break;


   case '0': case '1': case '2': case '3':
    if (j == buf->size-3) {
     git_error_set(GIT_ERROR_INVALID,
      "truncated quoted character \\%c", ch);
     return -1;
    }

    if (buf->ptr[j+1] < '0' || buf->ptr[j+1] > '7' ||
     buf->ptr[j+2] < '0' || buf->ptr[j+2] > '7') {
     git_error_set(GIT_ERROR_INVALID,
      "truncated quoted character \\%c%c%c",
      buf->ptr[j], buf->ptr[j+1], buf->ptr[j+2]);
     return -1;
    }

    ch = ((buf->ptr[j] - '0') << 6) |
     ((buf->ptr[j+1] - '0') << 3) |
     (buf->ptr[j+2] - '0');
    j += 2;
    break;

   default:
    git_error_set(GIT_ERROR_INVALID, "invalid quoted character \\%c", ch);
    return -1;
   }
  }

  buf->ptr[i] = ch;
 }

 buf->ptr[i] = '\0';
 buf->size = i;

 return 0;

invalid:
 git_error_set(GIT_ERROR_INVALID, "invalid quoted line");
 return -1;
}
