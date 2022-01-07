
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NextConstant4 () ;
 int pc ;

__attribute__((used)) static int Constant4( void ) {
 int v;

 v = NextConstant4();
 pc += 4;
 return v;
}
