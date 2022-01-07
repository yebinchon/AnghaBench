
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size_comment; } ;
struct TYPE_4__ {TYPE_1__ gi; int file; scalar_t__ central_pos; } ;
typedef TYPE_2__ unz_s ;
typedef int * unzFile ;
typedef scalar_t__ uLong ;
typedef int uInt ;


 int SEEK_SET ;
 int UNZ_ERRNO ;
 int UNZ_PARAMERROR ;
 int fread (char*,int ,int,int ) ;
 scalar_t__ fseek (int ,scalar_t__,int ) ;

extern int unzGetGlobalComment (unzFile file, char *szComment, uLong uSizeBuf)
{
 unz_s* s;
 uLong uReadThis ;
 if (file==((void*)0))
  return UNZ_PARAMERROR;
 s=(unz_s*)file;

 uReadThis = uSizeBuf;
 if (uReadThis>s->gi.size_comment)
  uReadThis = s->gi.size_comment;

 if (fseek(s->file,s->central_pos+22,SEEK_SET)!=0)
  return UNZ_ERRNO;

 if (uReadThis>0)
    {
      *szComment='\0';
   if (fread(szComment,(uInt)uReadThis,1,s->file)!=1)
  return UNZ_ERRNO;
    }

 if ((szComment != ((void*)0)) && (uSizeBuf > s->gi.size_comment))
  *(szComment+s->gi.size_comment)='\0';
 return (int)uReadThis;
}
