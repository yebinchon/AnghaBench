
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_delta_t ;
char git_diff_status_char(git_delta_t status)
{
 char code;

 switch (status) {
 case 136: code = 'A'; break;
 case 134: code = 'D'; break;
 case 132: code = 'M'; break;
 case 131: code = 'R'; break;
 case 135: code = 'C'; break;
 case 133: code = 'I'; break;
 case 128: code = '?'; break;
 case 130: code = 'T'; break;
 case 129: code = 'X'; break;
 default: code = ' '; break;
 }

 return code;
}
