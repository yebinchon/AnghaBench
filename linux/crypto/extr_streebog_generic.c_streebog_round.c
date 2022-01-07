
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct streebog_uint512 {int dummy; } ;


 struct streebog_uint512* C ;
 int streebog_xlps (struct streebog_uint512*,struct streebog_uint512*,struct streebog_uint512*) ;

__attribute__((used)) static void streebog_round(int i, struct streebog_uint512 *Ki,
      struct streebog_uint512 *data)
{
 streebog_xlps(Ki, &C[i], Ki);
 streebog_xlps(Ki, data, data);
}
