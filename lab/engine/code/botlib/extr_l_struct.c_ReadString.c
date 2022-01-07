
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
typedef int fielddef_t ;


 int MAX_STRINGFIELD ;
 int PC_ExpectTokenType (int *,int ,int ,TYPE_1__*) ;
 int StripDoubleQuotes (int ) ;
 int TT_STRING ;
 int strncpy (char*,int ,int) ;

int ReadString(source_t *source, fielddef_t *fd, void *p)
{
 token_t token;

 if (!PC_ExpectTokenType(source, TT_STRING, 0, &token)) return 0;

 StripDoubleQuotes(token.string);

 strncpy((char *) p, token.string, MAX_STRINGFIELD-1);

 ((char *)p)[MAX_STRINGFIELD-1] = '\0';

 return 1;
}
