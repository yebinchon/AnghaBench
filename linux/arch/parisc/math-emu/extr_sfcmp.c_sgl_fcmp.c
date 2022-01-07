
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int sgl_floating_point ;


 int Equal (unsigned int) ;
 scalar_t__ Exception (unsigned int) ;
 int Greaterthan (unsigned int) ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_invalidtrap_enabled () ;
 int Lessthan (unsigned int) ;
 int NOEXCEPTION ;
 scalar_t__ SGL_INFINITY_EXPONENT ;
 int Set_invalidflag () ;
 int Set_status_cbit (int ) ;
 scalar_t__ Sgl_all (unsigned int) ;
 scalar_t__ Sgl_exponent (unsigned int) ;
 scalar_t__ Sgl_isnotzero_mantissa (unsigned int) ;
 scalar_t__ Sgl_isone_sign (unsigned int) ;
 scalar_t__ Sgl_isone_signaling (unsigned int) ;
 scalar_t__ Sgl_iszero_exponentmantissa (unsigned int) ;
 scalar_t__ Sgl_iszero_sign (unsigned int) ;
 int Sgl_xortointp1 (unsigned int,unsigned int,int) ;
 int Unordered (unsigned int) ;

int
sgl_fcmp (sgl_floating_point * leftptr, sgl_floating_point * rightptr,
   unsigned int cond, unsigned int *status)



    {
    register unsigned int left, right;
    register int xorresult;


    left = *leftptr;
    right = *rightptr;




    if( (Sgl_exponent(left) == SGL_INFINITY_EXPONENT)
        || (Sgl_exponent(right) == SGL_INFINITY_EXPONENT) )
 {



        if( ( (Sgl_exponent(left) == SGL_INFINITY_EXPONENT)
     && Sgl_isnotzero_mantissa(left)
     && (Exception(cond) || Sgl_isone_signaling(left)))
    ||
     ( (Sgl_exponent(right) == SGL_INFINITY_EXPONENT)
     && Sgl_isnotzero_mantissa(right)
     && (Exception(cond) || Sgl_isone_signaling(right)) ) )
     {
     if( Is_invalidtrap_enabled() ) {
      Set_status_cbit(Unordered(cond));
  return(INVALIDEXCEPTION);
     }
     else Set_invalidflag();
     Set_status_cbit(Unordered(cond));
     return(NOEXCEPTION);
     }


        else if( ((Sgl_exponent(left) == SGL_INFINITY_EXPONENT)
     && Sgl_isnotzero_mantissa(left))
    ||
     ((Sgl_exponent(right) == SGL_INFINITY_EXPONENT)
     && Sgl_isnotzero_mantissa(right)) )
     {

     Set_status_cbit(Unordered(cond));
     return(NOEXCEPTION);
     }

 }


    Sgl_xortointp1(left,right,xorresult);
    if( xorresult < 0 )
        {


        if( Sgl_iszero_exponentmantissa(left)
   && Sgl_iszero_exponentmantissa(right) )
            {
     Set_status_cbit(Equal(cond));
     }
 else if( Sgl_isone_sign(left) )
     {
     Set_status_cbit(Lessthan(cond));
     }
 else
     {
     Set_status_cbit(Greaterthan(cond));
     }
        }


    else if( Sgl_all(left) == Sgl_all(right) )
        {
        Set_status_cbit(Equal(cond));
        }
    else if( Sgl_iszero_sign(left) )
        {

        if( Sgl_all(left) < Sgl_all(right) )
     {
     Set_status_cbit(Lessthan(cond));
     }
 else
     {
     Set_status_cbit(Greaterthan(cond));
     }
 }
    else
        {



        if( Sgl_all(left) > Sgl_all(right) )
     {
     Set_status_cbit(Lessthan(cond));
     }
        else
     {
     Set_status_cbit(Greaterthan(cond));
     }
        }
 return(NOEXCEPTION);
    }
