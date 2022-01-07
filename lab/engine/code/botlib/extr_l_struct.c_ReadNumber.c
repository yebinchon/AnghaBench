
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int subtype; double floatvalue; long intvalue; int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
typedef int qboolean ;
struct TYPE_6__ {int type; double floatmin; double floatmax; } ;
typedef TYPE_2__ fielddef_t ;


 int FT_BOUNDED ;
 int FT_CHAR ;
 int FT_FLOAT ;
 int FT_INT ;
 int FT_TYPE ;
 int FT_UNSIGNED ;
 long Maximum (long,double) ;
 long Minimum (long,double) ;
 int PC_ExpectAnyToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,...) ;
 int TT_FLOAT ;
 scalar_t__ TT_NUMBER ;
 scalar_t__ TT_PUNCTUATION ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,char*) ;

qboolean ReadNumber(source_t *source, fielddef_t *fd, void *p)
{
 token_t token;
 int negative = qfalse;
 long int intval, intmin = 0, intmax = 0;
 double floatval;

 if (!PC_ExpectAnyToken(source, &token)) return 0;


 if (token.type == TT_PUNCTUATION)
 {
  if (fd->type & FT_UNSIGNED)
  {
   SourceError(source, "expected unsigned value, found %s", token.string);
   return 0;
  }

  if (strcmp(token.string, "-"))
  {
   SourceError(source, "unexpected punctuation %s", token.string);
   return 0;
  }
  negative = qtrue;

  if (!PC_ExpectAnyToken(source, &token)) return 0;
 }

 if (token.type != TT_NUMBER)
 {
  SourceError(source, "expected number, found %s", token.string);
  return 0;
 }

 if (token.subtype & TT_FLOAT)
 {
  if ((fd->type & FT_TYPE) != FT_FLOAT)
  {
   SourceError(source, "unexpected float");
   return 0;
  }
  floatval = token.floatvalue;
  if (negative) floatval = -floatval;
  if (fd->type & FT_BOUNDED)
  {
   if (floatval < fd->floatmin || floatval > fd->floatmax)
   {
    SourceError(source, "float out of range [%f, %f]", fd->floatmin, fd->floatmax);
    return 0;
   }
  }
  *(float *) p = (float) floatval;
  return 1;
 }

 intval = token.intvalue;
 if (negative) intval = -intval;

 if ((fd->type & FT_TYPE) == FT_CHAR)
 {
  if (fd->type & FT_UNSIGNED) {intmin = 0; intmax = 255;}
  else {intmin = -128; intmax = 127;}
 }
 if ((fd->type & FT_TYPE) == FT_INT)
 {
  if (fd->type & FT_UNSIGNED) {intmin = 0; intmax = 65535;}
  else {intmin = -32768; intmax = 32767;}
 }
 if ((fd->type & FT_TYPE) == FT_CHAR || (fd->type & FT_TYPE) == FT_INT)
 {
  if (fd->type & FT_BOUNDED)
  {
   intmin = Maximum(intmin, fd->floatmin);
   intmax = Minimum(intmax, fd->floatmax);
  }
  if (intval < intmin || intval > intmax)
  {
   SourceError(source, "value %ld out of range [%ld, %ld]", intval, intmin, intmax);
   return 0;
  }
 }
 else if ((fd->type & FT_TYPE) == FT_FLOAT)
 {
  if (fd->type & FT_BOUNDED)
  {
   if (intval < fd->floatmin || intval > fd->floatmax)
   {
    SourceError(source, "value %ld out of range [%f, %f]", intval, fd->floatmin, fd->floatmax);
    return 0;
   }
  }
 }

 if ((fd->type & FT_TYPE) == FT_CHAR)
 {
  if (fd->type & FT_UNSIGNED) *(unsigned char *) p = (unsigned char) intval;
  else *(char *) p = (char) intval;
 }
 else if ((fd->type & FT_TYPE) == FT_INT)
 {
  if (fd->type & FT_UNSIGNED) *(unsigned int *) p = (unsigned int) intval;
  else *(int *) p = (int) intval;
 }
 else if ((fd->type & FT_TYPE) == FT_FLOAT)
 {
  *(float *) p = (float) intval;
 }
 return 1;
}
