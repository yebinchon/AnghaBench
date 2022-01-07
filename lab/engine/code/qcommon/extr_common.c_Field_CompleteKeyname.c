
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Field_Complete () ;
 int FindMatches ;
 int Key_KeynameCompletion (int ) ;
 int PrintMatches ;
 scalar_t__ matchCount ;
 scalar_t__* shortestMatch ;

void Field_CompleteKeyname( void )
{
 matchCount = 0;
 shortestMatch[ 0 ] = 0;

 Key_KeynameCompletion( FindMatches );

 if( !Field_Complete( ) )
  Key_KeynameCompletion( PrintMatches );
}
