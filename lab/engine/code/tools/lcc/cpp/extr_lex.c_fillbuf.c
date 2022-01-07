
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* inl; scalar_t__ fd; int* inp; scalar_t__ inb; } ;
typedef TYPE_1__ Source ;


 int EOB ;
 int EOF ;
 void* EOFC ;
 int FATAL ;
 int INS ;
 int error (int ,char*) ;
 int read (scalar_t__,char*,int) ;

int
fillbuf(Source *s)
{
 int n, nr;

 nr = INS/8;
 if ((char *)s->inl+nr > (char *)s->inb+INS)
  error(FATAL, "Input buffer overflow");
 if (s->fd<0 || (n=read(s->fd, (char *)s->inl, INS/8)) <= 0)
  n = 0;
 if ((*s->inp&0xff) == EOB)
  *s->inp = EOFC;
 s->inl += n;
 s->inl[0] = s->inl[1]= s->inl[2]= s->inl[3] = EOB;
 if (n==0) {
  s->inl[0] = s->inl[1]= s->inl[2]= s->inl[3] = EOFC;
  return EOF;
 }
 return 0;
}
