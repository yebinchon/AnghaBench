
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ other_case; int caseset; } ;
typedef TYPE_1__ ucd_record ;
typedef scalar_t__ pcre_uint32 ;
struct TYPE_7__ {scalar_t__ start_subject; scalar_t__* offset_vector; scalar_t__ end_subject; int lcc; scalar_t__ utf; } ;
typedef TYPE_2__ match_data ;
typedef scalar_t__ PCRE_PUCHAR ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 int GETCHARINC (scalar_t__,scalar_t__) ;
 TYPE_1__* GET_UCD (scalar_t__) ;
 scalar_t__* PRIV (int ) ;
 scalar_t__ TABLE_GET (scalar_t__,int ,scalar_t__) ;
 int TRUE ;
 scalar_t__ UCHAR21INCTEST (scalar_t__) ;
 scalar_t__ UCHAR21TEST (scalar_t__) ;
 int pchars (scalar_t__,int,int ,TYPE_2__*) ;
 int printf (char*) ;
 int ucd_caseless_sets ;

__attribute__((used)) static int
match_ref(int offset, register PCRE_PUCHAR eptr, int length, match_data *md,
  BOOL caseless)
{
PCRE_PUCHAR eptr_start = eptr;
register PCRE_PUCHAR p = md->start_subject + md->offset_vector[offset];
if (length < 0) return -1;





if (caseless)
  {
    {
    while (length-- > 0)
      {
      pcre_uint32 cc, cp;
      if (eptr >= md->end_subject) return -2;
      cc = UCHAR21TEST(eptr);
      cp = UCHAR21TEST(p);
      if (TABLE_GET(cp, md->lcc, cp) != TABLE_GET(cc, md->lcc, cc)) return -1;
      p++;
      eptr++;
      }
    }
  }




else
  {
  while (length-- > 0)
    {
    if (eptr >= md->end_subject) return -2;
    if (UCHAR21INCTEST(p) != UCHAR21INCTEST(eptr)) return -1;
    }
  }

return (int)(eptr - eptr_start);
}
