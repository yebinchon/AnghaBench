
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;

__attribute__((used)) static int score_missing(unsigned mode)
{
 int score;

 if (S_ISDIR(mode))
  score = -1000;
 else if (S_ISLNK(mode))
  score = -500;
 else
  score = -50;
 return score;
}
