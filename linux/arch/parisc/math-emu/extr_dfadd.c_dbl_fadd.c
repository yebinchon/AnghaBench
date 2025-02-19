
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbl_floating_point ;
typedef scalar_t__ boolean ;


 int DBL_INFINITY_EXPONENT ;
 int DBL_THRESHOLD ;
 int Dbl_addition (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_and_signs (unsigned int,unsigned int) ;
 int Dbl_arithrightshiftby1 (unsigned int,unsigned int) ;
 int Dbl_clear_exponent_set_hidden (unsigned int) ;
 int Dbl_clear_sign (unsigned int) ;
 int Dbl_clear_signexponent (unsigned int) ;
 int Dbl_clear_signexponent_set_hidden (unsigned int) ;
 int Dbl_copyfromptr (int *,unsigned int,unsigned int) ;
 int Dbl_copytoint_exponentmantissap1 (unsigned int,unsigned int) ;
 int Dbl_copytoptr (unsigned int,unsigned int,int *) ;
 int Dbl_exponent (unsigned int) ;
 int Dbl_fix_overshift (unsigned int,unsigned int,int,unsigned int) ;
 int Dbl_hiddenhigh3mantissa (unsigned int) ;
 int Dbl_increment (unsigned int,unsigned int) ;
 scalar_t__ Dbl_is_signalingnan (unsigned int) ;
 scalar_t__ Dbl_isinfinity (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isinfinity_exponent (unsigned int) ;
 scalar_t__ Dbl_ismagnitudeless (unsigned int,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ Dbl_isnotnan (unsigned int,unsigned int) ;
 scalar_t__ Dbl_isone_hidden (unsigned int) ;
 scalar_t__ Dbl_isone_hiddenoverflow (unsigned int) ;
 int Dbl_isone_lowmantissap2 (unsigned int) ;
 int Dbl_isone_sign (unsigned int) ;
 scalar_t__ Dbl_isone_signaling (unsigned int) ;
 scalar_t__ Dbl_iszero (unsigned int,unsigned int) ;
 scalar_t__ Dbl_iszero_exponentmantissa (unsigned int,unsigned int) ;
 scalar_t__ Dbl_iszero_hidden (unsigned int) ;
 scalar_t__ Dbl_iszero_hiddenhigh3mantissa (unsigned int) ;
 scalar_t__ Dbl_iszero_hiddenhigh7mantissa (unsigned int) ;
 scalar_t__ Dbl_iszero_mantissa (unsigned int,unsigned int) ;
 int Dbl_iszero_sign (unsigned int) ;
 int Dbl_leftshiftby1 (unsigned int,unsigned int) ;
 int Dbl_leftshiftby1_withextent (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_leftshiftby2 (unsigned int,unsigned int) ;
 int Dbl_leftshiftby3 (unsigned int,unsigned int) ;
 int Dbl_leftshiftby4 (unsigned int,unsigned int) ;
 int Dbl_leftshiftby8 (unsigned int,unsigned int) ;
 int Dbl_makequietnan (unsigned int,unsigned int) ;
 int Dbl_normalize (unsigned int,unsigned int,int) ;
 int Dbl_or_signs (unsigned int,unsigned int) ;
 int Dbl_right_align (unsigned int,unsigned int,int,unsigned int) ;
 int Dbl_rightshiftby1_withextent (unsigned int,unsigned int,unsigned int) ;
 int Dbl_set_exponent (unsigned int,int) ;
 int Dbl_set_quiet (unsigned int) ;
 int Dbl_set_sign (unsigned int,int) ;
 int Dbl_sethigh4bits (unsigned int,int) ;
 int Dbl_setone_sign (unsigned int) ;
 int Dbl_setoverflow (unsigned int,unsigned int) ;
 int Dbl_setwrapped_exponent (unsigned int,int,int ) ;
 int Dbl_setzero_sign (unsigned int) ;
 int Dbl_signextendedsign (unsigned int) ;
 int Dbl_subtract (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_subtract_withextension (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int Dbl_swap_lower (unsigned int,unsigned int) ;
 int Dbl_xorfromintp1 (unsigned int,unsigned int,unsigned int) ;
 int Dbl_xortointp1 (unsigned int,unsigned int,unsigned int) ;
 scalar_t__ Ext_isnotzero (unsigned int) ;
 int Ext_isnotzero_lower (unsigned int) ;
 int Ext_isone_sign (unsigned int) ;
 int Ext_leftshiftby1 (unsigned int) ;
 scalar_t__ FALSE ;
 int INEXACTEXCEPTION ;
 int INVALIDEXCEPTION ;
 scalar_t__ Is_inexacttrap_enabled () ;
 scalar_t__ Is_invalidtrap_enabled () ;
 scalar_t__ Is_overflowtrap_enabled () ;
 scalar_t__ Is_rounding_mode (int) ;
 scalar_t__ Is_underflowtrap_enabled () ;
 int NOEXCEPTION ;
 int OVERFLOWEXCEPTION ;




 int Rounding_mode () ;
 int Set_inexactflag () ;
 int Set_invalidflag () ;
 int Set_overflowflag () ;
 scalar_t__ TRUE ;
 int UNDERFLOWEXCEPTION ;
 int ovfl ;
 int unfl ;

dbl_fadd(
    dbl_floating_point *leftptr,
    dbl_floating_point *rightptr,
    dbl_floating_point *dstptr,
    unsigned int *status)
{
    register unsigned int signless_upper_left, signless_upper_right, save;
    register unsigned int leftp1, leftp2, rightp1, rightp2, extent;
    register unsigned int resultp1 = 0, resultp2 = 0;

    register int result_exponent, right_exponent, diff_exponent;
    register int sign_save, jumpsize;
    register boolean inexact = FALSE;
    register boolean underflowtrap;


    Dbl_copyfromptr(leftptr,leftp1,leftp2);
    Dbl_copyfromptr(rightptr,rightp1,rightp2);



    Dbl_xortointp1(leftp1,rightp1, save);




    if ((result_exponent = Dbl_exponent(leftp1)) == DBL_INFINITY_EXPONENT)
 {
 if (Dbl_iszero_mantissa(leftp1,leftp2))
     {
     if (Dbl_isnotnan(rightp1,rightp2))
  {
  if (Dbl_isinfinity(rightp1,rightp2) && save!=0)
      {



      if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);
                    Set_invalidflag();
                    Dbl_makequietnan(resultp1,resultp2);
      Dbl_copytoptr(resultp1,resultp2,dstptr);
      return(NOEXCEPTION);
      }



  Dbl_copytoptr(leftp1,leftp2,dstptr);
  return(NOEXCEPTION);
  }
     }
 else
     {



            if (Dbl_isone_signaling(leftp1))
  {

  if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

         Set_invalidflag();
         Dbl_set_quiet(leftp1);
         }



     else if (Dbl_is_signalingnan(rightp1))
  {

                if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

  Set_invalidflag();
  Dbl_set_quiet(rightp1);
  Dbl_copytoptr(rightp1,rightp2,dstptr);
  return(NOEXCEPTION);
  }



     Dbl_copytoptr(leftp1,leftp2,dstptr);
      return(NOEXCEPTION);
     }
 }



    if (Dbl_isinfinity_exponent(rightp1))
 {
 if (Dbl_iszero_mantissa(rightp1,rightp2))
     {

     Dbl_copytoptr(rightp1,rightp2,dstptr);
     return(NOEXCEPTION);
     }



        if (Dbl_isone_signaling(rightp1))
     {

     if (Is_invalidtrap_enabled()) return(INVALIDEXCEPTION);

     Set_invalidflag();
     Dbl_set_quiet(rightp1);
     }



 Dbl_copytoptr(rightp1,rightp2,dstptr);
 return(NOEXCEPTION);
     }




    Dbl_copytoint_exponentmantissap1(leftp1,signless_upper_left);
    Dbl_copytoint_exponentmantissap1(rightp1,signless_upper_right);


    if(Dbl_ismagnitudeless(leftp2,rightp2,signless_upper_left,signless_upper_right))
 {


 Dbl_xorfromintp1(save,rightp1, rightp1);
 Dbl_xorfromintp1(save,leftp1, leftp1);
      Dbl_swap_lower(leftp2,rightp2);
 result_exponent = Dbl_exponent(leftp1);
 }


    if((right_exponent = Dbl_exponent(rightp1)) == 0)
        {

 if(Dbl_iszero_mantissa(rightp1,rightp2))
     {

     if(Dbl_iszero_exponentmantissa(leftp1,leftp2))
  {

  if(Is_rounding_mode(131))
      {
      Dbl_or_signs(leftp1, rightp1);
      }
  else
      {
      Dbl_and_signs(leftp1, rightp1);
      }
  }
     else
  {



  if( (result_exponent == 0) && Is_underflowtrap_enabled() )
      {

          sign_save = Dbl_signextendedsign(leftp1);
      Dbl_leftshiftby1(leftp1,leftp2);
      Dbl_normalize(leftp1,leftp2,result_exponent);
      Dbl_set_sign(leftp1, sign_save);
                    Dbl_setwrapped_exponent(leftp1,result_exponent,unfl);
      Dbl_copytoptr(leftp1,leftp2,dstptr);

      return(UNDERFLOWEXCEPTION);
      }
  }
     Dbl_copytoptr(leftp1,leftp2,dstptr);
     return(NOEXCEPTION);
     }


 Dbl_clear_sign(rightp1);
 if(result_exponent == 0 )
     {



     if( ( int) save < 0 )
  {
  Dbl_subtract(leftp1,leftp2, rightp1,rightp2,
          resultp1,resultp2);
  if(Dbl_iszero_mantissa(resultp1,resultp2))
      {
      if(Is_rounding_mode(131))
   {
   Dbl_setone_sign(resultp1);
   }
      else
   {
   Dbl_setzero_sign(resultp1);
   }
      Dbl_copytoptr(resultp1,resultp2,dstptr);
      return(NOEXCEPTION);
      }
  }
     else
  {
  Dbl_addition(leftp1,leftp2,rightp1,rightp2,
          resultp1,resultp2);
  if(Dbl_isone_hidden(resultp1))
      {
      Dbl_copytoptr(resultp1,resultp2,dstptr);
      return(NOEXCEPTION);
      }
  }
     if(Is_underflowtrap_enabled())
  {

      sign_save = Dbl_signextendedsign(resultp1);
  Dbl_leftshiftby1(resultp1,resultp2);
  Dbl_normalize(resultp1,resultp2,result_exponent);
  Dbl_set_sign(resultp1, sign_save);
                Dbl_setwrapped_exponent(resultp1,result_exponent,unfl);
         Dbl_copytoptr(resultp1,resultp2,dstptr);

         return(UNDERFLOWEXCEPTION);
  }
     Dbl_copytoptr(resultp1,resultp2,dstptr);
     return(NOEXCEPTION);
     }
 right_exponent = 1;

 }
    else
 {
 Dbl_clear_signexponent_set_hidden(rightp1);
 }
    Dbl_clear_exponent_set_hidden(leftp1);
    diff_exponent = result_exponent - right_exponent;







    if(diff_exponent > DBL_THRESHOLD)
 {
 diff_exponent = DBL_THRESHOLD;
 }


    Dbl_right_align( rightp1,rightp2, diff_exponent,
                    extent);


    if( ( int) save < 0 )
 {





 Dbl_subtract_withextension(leftp1,leftp2, rightp1,rightp2,
         extent, resultp1,resultp2);
 if(Dbl_iszero_hidden(resultp1))
     {
     sign_save = Dbl_signextendedsign(resultp1);
            Dbl_leftshiftby1_withextent(resultp1,resultp2,extent,resultp1,resultp2);





         if(Dbl_iszero(resultp1,resultp2))

  {
  if(Is_rounding_mode(131)) Dbl_setone_sign(resultp1);
  Dbl_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
  }
     result_exponent--;

     if(Dbl_isone_hidden(resultp1))
  {
  if(result_exponent==0)
      {


      goto underflow;
      }
  else
      {

      Dbl_set_sign(resultp1, sign_save);
          Ext_leftshiftby1(extent);
      goto round;
      }
  }



     if(!(underflowtrap = Is_underflowtrap_enabled()) &&
        result_exponent==0) goto underflow;



     Ext_leftshiftby1(extent);






     while(Dbl_iszero_hiddenhigh7mantissa(resultp1))
  {
  Dbl_leftshiftby8(resultp1,resultp2);
  if((result_exponent -= 8) <= 0 && !underflowtrap)
      goto underflow;
  }

     if(Dbl_iszero_hiddenhigh3mantissa(resultp1))
  {

  Dbl_leftshiftby4(resultp1,resultp2);
  if((result_exponent -= 4) <= 0 && !underflowtrap)
      goto underflow;
  }


     if((jumpsize = Dbl_hiddenhigh3mantissa(resultp1)) > 7)
  {

  if(result_exponent <= 0) goto underflow;
  Dbl_set_sign(resultp1, sign_save);
  Dbl_set_exponent(resultp1, result_exponent);
  Dbl_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
  }
     Dbl_sethigh4bits(resultp1, sign_save);
     switch(jumpsize)
  {
  case 1:
      {
      Dbl_leftshiftby3(resultp1,resultp2);
      result_exponent -= 3;
      break;
      }
  case 2:
  case 3:
      {
      Dbl_leftshiftby2(resultp1,resultp2);
      result_exponent -= 2;
      break;
      }
  case 4:
  case 5:
  case 6:
  case 7:
      {
      Dbl_leftshiftby1(resultp1,resultp2);
      result_exponent -= 1;
      break;
      }
  }
     if(result_exponent > 0)
  {
  Dbl_set_exponent(resultp1, result_exponent);
  Dbl_copytoptr(resultp1,resultp2,dstptr);
  return(NOEXCEPTION);
  }

   underflow:
     if(Is_underflowtrap_enabled())
  {
  Dbl_set_sign(resultp1,sign_save);
                Dbl_setwrapped_exponent(resultp1,result_exponent,unfl);
  Dbl_copytoptr(resultp1,resultp2,dstptr);

  return(UNDERFLOWEXCEPTION);
  }




     Dbl_fix_overshift(resultp1,resultp2,(1-result_exponent),extent);
     Dbl_clear_signexponent(resultp1);
     Dbl_set_sign(resultp1,sign_save);
     Dbl_copytoptr(resultp1,resultp2,dstptr);
     return(NOEXCEPTION);
     }

 }
    else
 {

 Dbl_addition(leftp1,leftp2,rightp1,rightp2, resultp1,resultp2);
 if(Dbl_isone_hiddenoverflow(resultp1))
     {

     Dbl_rightshiftby1_withextent(resultp2,extent,extent);
     Dbl_arithrightshiftby1(resultp1,resultp2);
     result_exponent++;
     }
 }





  round:
    if(Ext_isnotzero(extent))
 {
 inexact = TRUE;
 switch(Rounding_mode())
     {
     case 130:
     if(Ext_isone_sign(extent))
  {

  if(Ext_isnotzero_lower(extent) ||
    Dbl_isone_lowmantissap2(resultp2))
      {

      Dbl_increment(resultp1,resultp2);
      }
  }
     break;

     case 129:
     if(Dbl_iszero_sign(resultp1))
  {

  Dbl_increment(resultp1,resultp2);
  }
     break;

     case 131:
     if(Dbl_isone_sign(resultp1))
  {

  Dbl_increment(resultp1,resultp2);
  }

     case 128:;

     }
 if(Dbl_isone_hiddenoverflow(resultp1)) result_exponent++;
 }
    if(result_exponent == DBL_INFINITY_EXPONENT)
        {

        if(Is_overflowtrap_enabled())
     {
     Dbl_setwrapped_exponent(resultp1,result_exponent,ovfl);
     Dbl_copytoptr(resultp1,resultp2,dstptr);
     if (inexact)
  if (Is_inexacttrap_enabled())
   return(OVERFLOWEXCEPTION | INEXACTEXCEPTION);
  else Set_inexactflag();
     return(OVERFLOWEXCEPTION);
     }
        else
     {
     inexact = TRUE;
     Set_overflowflag();
     Dbl_setoverflow(resultp1,resultp2);
     }
 }
    else Dbl_set_exponent(resultp1,result_exponent);
    Dbl_copytoptr(resultp1,resultp2,dstptr);
    if(inexact)
 if(Is_inexacttrap_enabled())
     return(INEXACTEXCEPTION);
 else Set_inexactflag();
    return(NOEXCEPTION);
}
