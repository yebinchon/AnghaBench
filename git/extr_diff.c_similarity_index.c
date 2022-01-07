
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_filepair {int score; } ;


 int MAX_SCORE ;

__attribute__((used)) static int similarity_index(struct diff_filepair *p)
{
 return p->score * 100 / MAX_SCORE;
}
