
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int com_lines ;
 int com_tokenline ;

int COM_GetCurrentParseLine( void )
{
 if ( com_tokenline )
 {
  return com_tokenline;
 }

 return com_lines;
}
