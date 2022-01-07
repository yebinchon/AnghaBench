
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uInt ;
typedef int decFloat ;


 scalar_t__* DECCOMBMSD ;
 int DECPMAX ;
 scalar_t__ DFISINF (int const*) ;
 int DFISNAN (int const*) ;
 int DFWORD (int const*,int) ;
 int dpdlenchk (int,int) ;
 int dpdlendun (int,int) ;

uInt decFloatDigits(const decFloat *df) {
  uInt dpd;
  uInt sourhi=DFWORD(df, 0);



  uInt sourlo;

  if (DFISINF(df)) return 1;


  if (!DFISNAN(df) && DECCOMBMSD[sourhi>>26]) return DECPMAX;
  }
