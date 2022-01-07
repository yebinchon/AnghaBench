
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int * _mktemp (char*) ;
 scalar_t__ _mktemp_s (char*,scalar_t__) ;
 int p_open (char*,int,int) ;
 scalar_t__ strlen (char*) ;

int p_mkstemp(char *tmp_path)
{




 if (_mktemp(tmp_path) == ((void*)0))
  return -1;


 return p_open(tmp_path, O_RDWR | O_CREAT | O_EXCL, 0744);
}
