
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_userlist ;
 int assert (int) ;
 int default_firstint_forward () ;
 int default_random_forward () ;
 int diagonal_gather_methods ;
 int merge_forward (int *) ;
 int sum_one_gather_methods ;
 int sum_search_gather_methods ;
 int sum_tuple_gather_methods ;
 int sum_vector_gather_methods ;
 int tl_fetch_lookup_int () ;

int targ_forward (void) {
  Q_userlist = 0;
  int op = tl_fetch_lookup_int ();
  assert (op);

  switch (op) {
  case 154:
  case 153:
  case 155:
  case 145:
  case 140:
  case 144:
  case 147:
  case 151:
  case 136:
  case 139:
  case 142:
  case 143:
  case 146:
  case 141:
  case 134:
    merge_forward (&diagonal_gather_methods);
    return 0;
  case 158:
  case 150:
  case 137:
  case 148:
  case 129:
    merge_forward (&sum_one_gather_methods);
    return 0;
  case 157:
  case 138:
  case 156:
    merge_forward (&sum_tuple_gather_methods);
    return 0;
  case 131:
  case 132:
    merge_forward (&sum_vector_gather_methods);
    return 0;
  case 130:
    merge_forward (&sum_search_gather_methods);
    return 0;
  case 152:
    return default_random_forward ();
  case 133:
  case 149:
  case 128:
  case 135:

    merge_forward (&sum_tuple_gather_methods);
    return 0;
  default:
    return default_firstint_forward ();
  }



}
