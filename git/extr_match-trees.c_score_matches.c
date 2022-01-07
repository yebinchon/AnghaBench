
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ S_ISDIR (unsigned int) ;
 scalar_t__ S_ISLNK (unsigned int) ;

__attribute__((used)) static int score_matches(unsigned mode1, unsigned mode2)
{
 int score;


 if (S_ISDIR(mode1) != S_ISDIR(mode2))
  score = -100;
 else if (S_ISLNK(mode1) != S_ISLNK(mode2))
  score = -50;

 else if (S_ISDIR(mode1))
  score = 1000;
 else if (S_ISLNK(mode1))
  score = 500;
 else
  score = 250;
 return score;
}
