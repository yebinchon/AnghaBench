
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int string; } ;
typedef TYPE_1__ token_t ;
struct TYPE_11__ {int size; int fields; } ;
typedef TYPE_2__ structdef_t ;
typedef int source_t ;
struct TYPE_12__ {int type; int maxarray; int offset; TYPE_2__* substruct; } ;
typedef TYPE_3__ fielddef_t ;


 int FT_ARRAY ;





 int FT_TYPE ;
 TYPE_3__* FindField (int ,int ) ;
 int MAX_STRINGFIELD ;
 scalar_t__ PC_CheckTokenString (int *,char*) ;
 int PC_ExpectAnyToken (int *,TYPE_1__*) ;
 int PC_ExpectTokenString (int *,char*) ;
 int ReadChar (int *,TYPE_3__*,void*) ;
 int ReadNumber (int *,TYPE_3__*,void*) ;
 int ReadString (int *,TYPE_3__*,void*) ;
 int SourceError (int *,char*,...) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,char*) ;

int ReadStructure(source_t *source, structdef_t *def, char *structure)
{
 token_t token;
 fielddef_t *fd;
 void *p;
 int num;

 if (!PC_ExpectTokenString(source, "{")) return 0;
 while(1)
 {
  if (!PC_ExpectAnyToken(source, &token)) return qfalse;

  if (!strcmp(token.string, "}")) break;

  fd = FindField(def->fields, token.string);
  if (!fd)
  {
   SourceError(source, "unknown structure field %s", token.string);
   return qfalse;
  }
  if (fd->type & FT_ARRAY)
  {
   num = fd->maxarray;
   if (!PC_ExpectTokenString(source, "{")) return qfalse;
  }
  else
  {
   num = 1;
  }
  p = (void *)(structure + fd->offset);
  while (num-- > 0)
  {
   if (fd->type & FT_ARRAY)
   {
    if (PC_CheckTokenString(source, "}")) break;
   }
   switch(fd->type & FT_TYPE)
   {
    case 132:
    {
     if (!ReadChar(source, fd, p)) return qfalse;
     p = (char *) p + sizeof(char);
     break;
    }
    case 130:
    {
     if (!ReadNumber(source, fd, p)) return qfalse;
     p = (char *) p + sizeof(int);
     break;
    }
    case 131:
    {
     if (!ReadNumber(source, fd, p)) return qfalse;
     p = (char *) p + sizeof(float);
     break;
    }
    case 129:
    {
     if (!ReadString(source, fd, p)) return qfalse;
     p = (char *) p + MAX_STRINGFIELD;
     break;
    }
    case 128:
    {
     if (!fd->substruct)
     {
      SourceError(source, "BUG: no sub structure defined");
      return qfalse;
     }
     ReadStructure(source, fd->substruct, (char *) p);
     p = (char *) p + fd->substruct->size;
     break;
    }
   }
   if (fd->type & FT_ARRAY)
   {
    if (!PC_ExpectAnyToken(source, &token)) return qfalse;
    if (!strcmp(token.string, "}")) break;
    if (strcmp(token.string, ","))
    {
     SourceError(source, "expected a comma, found %s", token.string);
     return qfalse;
    }
   }
  }
 }
 return qtrue;
}
