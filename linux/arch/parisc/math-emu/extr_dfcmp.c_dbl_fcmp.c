
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;


 scalar_t__ DBL_INFINITY_EXPONENT ;
 scalar_t__ Dbl_allp1 (unsigned int) ;
 scalar_t__ Dbl_allp2 (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 scalar_t__ Dbl_exponent (unsigned int) ;
 scalar_t__ Dbl_isequal (unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ Dbl_isnotzero_mantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isone_sign (unsigned int) ;
 scalar_t__ Dbl_isone_signaling (unsigned int) ;
 scalar_t__ Dbl_iszero_exponentmantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_iszero_sign (unsigned int) ;
 int Dbl_xortointp1 (unsigned int,unsigned int,int) ;
 int Equal (unsigned int) ;
 scalar_t__ Exception (unsigned int) ;
 int Greaterthan (unsigned int) ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int Lessthan (unsigned int) ;
 int NOEXCEPTION ;
 int Set_invalidflag () ;
 int Set_status_cbit (int ) ;
 int Unordered (unsigned int) ;

int
dbl_fcmp (dbl_floating_point * leftptr, dbl_floating_point * rightptr,
   unsigned int cond, unsigned int *status)



    {
    register unsigned int leftp1, leftp2, rightp1, rightp2;
    register int xorresult;


    Dbl_copyfromptr(leftptr,leftp1,leftp2);
    Dbl_copyfromptr(rightptr,rightp1,rightp2);



    if( (Dbl_exponent(leftp1) == DBL_INFINITY_EXPONENT)
        || (Dbl_exponent(rightp1) == DBL_INFINITY_EXPONENT) )
 {



        if( ((Dbl_exponent(leftp1) == DBL_INFINITY_EXPONENT)
     && Dbl_isnotzero_mantissa(leftp1,leftp2)
     && (Exception(cond) || Dbl_isone_signaling(leftp1)))
    ||
     ((Dbl_exponent(rightp1) == DBL_INFINITY_EXPONENT)
     && Dbl_isnotzero_mantissa(rightp1,rightp2)
     && (Exception(cond) || Dbl_isone_signaling(rightp1))) )
     {
     if( Is_invalidtrap_enabled() ) {
      Set_status_cbit(Unordered(cond));
  return(INVALIDEXCEPTION);
     }
     else Set_invalidflag();
     Set_status_cbit(Unordered(cond));
     return(NOEXCEPTION);
     }


        else if( ((Dbl_exponent(leftp1) == DBL_INFINITY_EXPONENT)
     && Dbl_isnotzero_mantissa(leftp1,leftp2))
    ||
     ((Dbl_exponent(rightp1) == DBL_INFINITY_EXPONENT)
     && Dbl_isnotzero_mantissa(rightp1,rightp2)) )
     {

     Set_status_cbit(Unordered(cond));
     return(NOEXCEPTION);
     }

 }


    Dbl_xortointp1(leftp1,rightp1,xorresult);
    if( xorresult < 0 )
        {


        if( Dbl_iszero_exponentmantissa(leftp1,leftp2)
   && Dbl_iszero_exponentmantissa(rightp1,rightp2) )
            {
     Set_status_cbit(Equal(cond));
     }
 else if( Dbl_isone_sign(leftp1) )
     {
     Set_status_cbit(Lessthan(cond));
     }
 else
     {
     Set_status_cbit(Greaterthan(cond));
     }
        }


    else if(Dbl_isequal(leftp1,leftp2,rightp1,rightp2))
        {
        Set_status_cbit(Equal(cond));
        }
    else if( Dbl_iszero_sign(leftp1) )
        {

 if( Dbl_allp1(leftp1) < Dbl_allp1(rightp1) )
     {
     Set_status_cbit(Lessthan(cond));
     }
 else if( Dbl_allp1(leftp1) > Dbl_allp1(rightp1) )
     {
     Set_status_cbit(Greaterthan(cond));
     }
 else
     {


     if( Dbl_allp2(leftp2) < Dbl_allp2(rightp2) )
  {
  Set_status_cbit(Lessthan(cond));
  }
     else
  {
  Set_status_cbit(Greaterthan(cond));
  }
     }
 }
    else
        {



 if( Dbl_allp1(leftp1) > Dbl_allp1(rightp1) )
     {
     Set_status_cbit(Lessthan(cond));
     }
 else if( Dbl_allp1(leftp1) < Dbl_allp1(rightp1) )
     {
     Set_status_cbit(Greaterthan(cond));
     }
 else
     {


     if( Dbl_allp2(leftp2) > Dbl_allp2(rightp2) )
  {
  Set_status_cbit(Lessthan(cond));
  }
     else
  {
  Set_status_cbit(Greaterthan(cond));
  }
     }
        }
 return(NOEXCEPTION);
    }
