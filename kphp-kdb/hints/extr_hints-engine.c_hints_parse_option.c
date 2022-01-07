
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rating ;


 int MAX_CNT ;
 void* MAX_RATING ;
 int MAX_RATING_NORM ;
 int MAX_RATING_NUM ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int RATING_NORM ;
 int add_on_increment ;
 int assert (int) ;
 void* atoi (int ) ;
 int check_type (int) ;
 void* default_max_cnt_type ;
 int dump_mode ;
 int * dump_type ;
 void* estimate_users ;
 int fading ;
 int fprintf (int ,char*) ;
 int immediate_mode ;
 int index_mode ;
 int keep_not_alive ;
 int* max_cnt_type ;
 int max_memory ;
 int mlockall (int) ;
 int new_binlog_name ;
 int no_changes ;
 int optarg ;
 int rating_num ;
 int sscanf (int ,char*,int*,int*) ;
 int stderr ;
 int usage () ;
 int write_only ;

int hints_parse_option (int val) {
  switch (val) {
    case 'D': {
      dump_mode = 1;
      int d_type = atoi (optarg);
      if (!check_type (d_type)) {
        usage ();
        return 2;
      }



      dump_type[d_type]++;
      break;
    }
    case 'e':
      estimate_users = atoi (optarg);
      break;
    case 'F':
      default_max_cnt_type = atoi (optarg);
      break;
    case 'L': {
      int type, max_cnt_t;
      assert (sscanf (optarg, "%d,%d", &type, &max_cnt_t) >= 2);
      assert (check_type (type));
      max_cnt_type[type] = max_cnt_t;
      break;
    }
    case 'm':
      max_memory = atoi (optarg);
      if (max_memory < 1) {
        max_memory = 1;
      }
      max_memory <<= 20;
      break;
    case 'M':
      MAX_CNT = atoi (optarg);
      assert (1 <= MAX_CNT && (MAX_CNT + 1) * (long long)sizeof (rating) * (long long)MAX_RATING_NUM <= 2000000000);
      break;
    case 'N':
      RATING_NORM = atoi (optarg);
      assert (1 <= RATING_NORM && RATING_NORM <= MAX_RATING_NORM);
      RATING_NORM *= 60 * 60;
      break;
    case 'o':
      index_mode = 1;
      new_binlog_name = optarg;
      break;
    case 'q':
      MAX_RATING = atoi (optarg);
      break;
    case 'R':
      rating_num = atoi (optarg);
      assert (1 <= rating_num && rating_num <= MAX_RATING_NUM);
      break;
    case 'A':
      keep_not_alive = 1;
      break;
    case 'f':
      no_changes = 1;
      break;





    case 'I':
      immediate_mode = 1;
      break;
    case 'i':
      index_mode = 1;
      break;
    case 'k':
      if (mlockall (MCL_CURRENT | MCL_FUTURE) != 0) {
        fprintf (stderr, "error: fail to lock paged memory\n");
      }
      break;
    case 'w':
      write_only = 1;
      break;
    case 'z':
      fading = 0;
      break;
    default:
      return -1;
  }
  return 0;
}
