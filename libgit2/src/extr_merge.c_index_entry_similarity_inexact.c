
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_10__ {TYPE_1__* metric; } ;
typedef TYPE_2__ git_merge_options ;
struct TYPE_11__ {int mode; } ;
typedef TYPE_3__ git_index_entry ;
struct TYPE_9__ {scalar_t__ (* similarity ) (int*,void*,void*,int ) ;int payload; } ;


 int GIT_MODE_ISBLOB (int ) ;
 int index_entry_similarity_calc (void**,int *,TYPE_3__*,TYPE_2__ const*) ;
 scalar_t__ stub1 (int*,void*,void*,int ) ;

__attribute__((used)) static int index_entry_similarity_inexact(
 git_repository *repo,
 git_index_entry *a,
 size_t a_idx,
 git_index_entry *b,
 size_t b_idx,
 void **cache,
 const git_merge_options *opts)
{
 int score = 0;
 int error = 0;

 if (!GIT_MODE_ISBLOB(a->mode) || !GIT_MODE_ISBLOB(b->mode))
  return 0;


 if (!cache[a_idx] && (error = index_entry_similarity_calc(&cache[a_idx], repo, a, opts)) < 0)
  return error;
 if (!cache[b_idx] && (error = index_entry_similarity_calc(&cache[b_idx], repo, b, opts)) < 0)
  return error;


 if (!cache[a_idx] || !cache[b_idx])
  return 0;


 if (opts->metric->similarity(
  &score, cache[a_idx], cache[b_idx], opts->metric->payload) < 0)
  return -1;


 if (score < 0)
  score = 0;
 else if (score > 100)
  score = 100;

 return score;
}
