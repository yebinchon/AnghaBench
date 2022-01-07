
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ stat (char*,struct stat*) ;

__attribute__((used)) static int file_exist(char *filename)
{
 struct stat buffer;

 return stat(filename, &buffer) == 0;
}
