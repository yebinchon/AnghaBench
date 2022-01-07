
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Parse () ;
 int atoiNoCap (int ) ;
 int token ;

__attribute__((used)) static int ParseValue( void ) {
 Parse();
 return atoiNoCap( token );
}
