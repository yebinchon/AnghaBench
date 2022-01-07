
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* root; } ;
struct TYPE_6__ {int dtype; } ;
struct TYPE_7__ {TYPE_1__ tok; } ;
typedef int FILE ;


 scalar_t__ IS_STR (int ) ;
 int MAX_QUERY_LEN ;
 size_t MAX_STATS ;
 int exit (int) ;
 char* expression_compile (TYPE_4__*,char*,int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 size_t get_type_id (char*) ;
 int split (char*,char**,int*,int) ;
 TYPE_4__* stat_expr ;
 char* stat_queries_file ;
 size_t* stat_type ;
 size_t stats_cnt ;
 int stderr ;
 int strlen (char*) ;
 TYPE_2__* tree_conv (TYPE_2__*,int ) ;
 int * types ;
 int v_int ;

void load_stat_queries (void) {
  if (stat_queries_file == ((void*)0)) {
    return;
  }

  FILE *f = fopen (stat_queries_file, "r");
  if (f == ((void*)0)) {
    fprintf (stderr, "Can't open file %s with queries.\n", stat_queries_file);
    exit (1);
  }
  char query[MAX_QUERY_LEN];
  for (stats_cnt = 0; stats_cnt < MAX_STATS; stats_cnt++) {
    if (fgets (query, MAX_QUERY_LEN, f) == ((void*)0)) {
      break;
    }

    if (strlen (query) <= 1) {
      stats_cnt--;
      continue;
    }
    query[strlen (query) - 1] = 0;

    static char *qs[3];
    int qn;
    split (query, qs, &qn, 2);
    if (qn == 0) {
      fprintf (stderr, "Too much commas in query %s.\n", query);
      exit (1);
    }

    stat_type[stats_cnt] = get_type_id (qs[0]);
    if (stat_type[stats_cnt] == 0) {
      fprintf (stderr, "Can't find type [%s].\n", qs[0]);
      exit (1);
    }

    char *err = expression_compile (&stat_expr[stats_cnt], qs[1], &types[stat_type[stats_cnt]]);
    if (err != ((void*)0)) {
      fprintf (stderr, "Cannot compile expression [%s] : error [%s]\n", qs[1], err);
      exit (1);
    }

    if (IS_STR(stat_expr[stats_cnt].root->tok.dtype)) {
      fprintf (stderr, "Cannot convert result of query[%s] (string) to int\n", qs[1]);
      exit (1);
    }
    stat_expr[stats_cnt].root = tree_conv (stat_expr[stats_cnt].root, v_int);
  }
  if (stats_cnt == MAX_STATS) {
    fprintf (stderr, "Max number of stat_queries %d exceeded. Aborting.\n", MAX_STATS);
    exit (1);
  }
}
