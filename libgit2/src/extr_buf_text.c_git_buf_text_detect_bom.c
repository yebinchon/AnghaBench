
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char* ptr; } ;
typedef TYPE_1__ git_buf ;
typedef int git_bom_t ;


 int GIT_BOM_NONE ;
 int GIT_BOM_UTF16_BE ;
 int GIT_BOM_UTF16_LE ;
 int GIT_BOM_UTF32_BE ;
 int GIT_BOM_UTF32_LE ;
 int GIT_BOM_UTF8 ;

int git_buf_text_detect_bom(git_bom_t *bom, const git_buf *buf)
{
 const char *ptr;
 size_t len;

 *bom = GIT_BOM_NONE;

 if (buf->size < 2)
  return 0;

 ptr = buf->ptr;
 len = buf->size;

 switch (*ptr++) {
 case 0:
  if (len >= 4 && ptr[0] == 0 && ptr[1] == '\xFE' && ptr[2] == '\xFF') {
   *bom = GIT_BOM_UTF32_BE;
   return 4;
  }
  break;
 case '\xEF':
  if (len >= 3 && ptr[0] == '\xBB' && ptr[1] == '\xBF') {
   *bom = GIT_BOM_UTF8;
   return 3;
  }
  break;
 case '\xFE':
  if (*ptr == '\xFF') {
   *bom = GIT_BOM_UTF16_BE;
   return 2;
  }
  break;
 case '\xFF':
  if (*ptr != '\xFE')
   break;
  if (len >= 4 && ptr[1] == 0 && ptr[2] == 0) {
   *bom = GIT_BOM_UTF32_LE;
   return 4;
  } else {
   *bom = GIT_BOM_UTF16_LE;
   return 2;
  }
  break;
 default:
  break;
 }

 return 0;
}
