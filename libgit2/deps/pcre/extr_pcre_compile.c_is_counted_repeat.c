
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pcre_uchar ;
typedef int BOOL ;


 scalar_t__ CHAR_COMMA ;
 scalar_t__ const CHAR_RIGHT_CURLY_BRACKET ;
 int FALSE ;
 scalar_t__ IS_DIGIT (scalar_t__ const) ;
 int TRUE ;

__attribute__((used)) static BOOL
is_counted_repeat(const pcre_uchar *p)
{
if (!IS_DIGIT(*p)) return FALSE;
p++;
while (IS_DIGIT(*p)) p++;
if (*p == CHAR_RIGHT_CURLY_BRACKET) return TRUE;

if (*p++ != CHAR_COMMA) return FALSE;
if (*p == CHAR_RIGHT_CURLY_BRACKET) return TRUE;

if (!IS_DIGIT(*p)) return FALSE;
p++;
while (IS_DIGIT(*p)) p++;

return (*p == CHAR_RIGHT_CURLY_BRACKET);
}
