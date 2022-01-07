
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ byte ;


 int Emit1 (scalar_t__) ;
 int EmitString (char const*) ;

__attribute__((used)) static void EmitRexString(byte rex, const char *string)
{





 EmitString(string);
}
