
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 int DISPLAY (char*,int,int ,int ) ;
 int DISPLAYLEVEL (int,char*,int,int ,int ) ;
 int exit (int) ;

__attribute__((used)) static void BMK_checkResult(U32 r1, U32 r2)
{
    static int nbTests = 1;
    if (r1==r2) {
        DISPLAYLEVEL(3, "\rTest%3i : %08X == %08X   ok   ", nbTests, r1, r2);
    } else {
        DISPLAY("\rERROR : Test%3i : %08X <> %08X   !!!!!   \n", nbTests, r1, r2);
        exit(1);
    }
    nbTests++;
}
