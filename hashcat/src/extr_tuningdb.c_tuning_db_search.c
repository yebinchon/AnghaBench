
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int entry_cnt; int entry_buf; int alias_cnt; int alias_buf; } ;
typedef TYPE_1__ tuning_db_t ;
struct TYPE_9__ {char* device_name; char* alias_name; int attack_mode; int hash_mode; } ;
typedef TYPE_2__ tuning_db_entry_t ;
typedef TYPE_2__ tuning_db_alias_t ;
struct TYPE_10__ {TYPE_1__* tuning_db; } ;
typedef TYPE_4__ hashcat_ctx_t ;
typedef int cl_device_type ;


 int const CL_DEVICE_TYPE_ACCELERATOR ;
 int const CL_DEVICE_TYPE_CPU ;
 int const CL_DEVICE_TYPE_GPU ;
 scalar_t__ bsearch (TYPE_2__*,int ,int ,int,int ) ;
 int hcfree (char*) ;
 char* hcstrdup (char const*) ;
 int sort_by_tuning_db_alias ;
 int sort_by_tuning_db_entry ;
 size_t strlen (char*) ;

tuning_db_entry_t *tuning_db_search (hashcat_ctx_t *hashcat_ctx, const char *device_name, const cl_device_type device_type, int attack_mode, const int hash_mode)
{
  tuning_db_t *tuning_db = hashcat_ctx->tuning_db;

  static tuning_db_entry_t s;



  char *device_name_nospace = hcstrdup (device_name);

  const size_t device_name_length = strlen (device_name_nospace);

  size_t i;

  for (i = 0; i < device_name_length; i++)
  {
    if (device_name_nospace[i] == ' ') device_name_nospace[i] = '_';
  }



  tuning_db_alias_t a;

  a.device_name = device_name_nospace;

  char *alias_name = ((void*)0);

  for (i = device_name_length; i >= 1; i--)
  {
    device_name_nospace[i] = 0;

    tuning_db_alias_t *alias = (tuning_db_alias_t *) bsearch (&a, tuning_db->alias_buf, tuning_db->alias_cnt, sizeof (tuning_db_alias_t), sort_by_tuning_db_alias);

    if (alias == ((void*)0)) continue;

    alias_name = alias->alias_name;

    break;
  }



  if (attack_mode == 6) attack_mode = 1;
  if (attack_mode == 7) attack_mode = 1;



  s.device_name = device_name_nospace;
  s.attack_mode = attack_mode;
  s.hash_mode = hash_mode;

  tuning_db_entry_t *entry = ((void*)0);



  for (i = 0; i < 8; i++)
  {
    s.device_name = (i & 1) ? "*" : device_name_nospace;
    s.attack_mode = (i & 2) ? -1 : attack_mode;
    s.hash_mode = (i & 4) ? -1 : hash_mode;

    entry = (tuning_db_entry_t *) bsearch (&s, tuning_db->entry_buf, tuning_db->entry_cnt, sizeof (tuning_db_entry_t), sort_by_tuning_db_entry);

    if (entry != ((void*)0)) break;



    if ((i & 1) == 0)
    {


      if (alias_name != ((void*)0))
      {
        s.device_name = alias_name;

        entry = (tuning_db_entry_t *) bsearch (&s, tuning_db->entry_buf, tuning_db->entry_cnt, sizeof (tuning_db_entry_t), sort_by_tuning_db_entry);

        if (entry != ((void*)0)) break;
      }



      if (device_type & CL_DEVICE_TYPE_CPU)
      {
        s.device_name = "DEVICE_TYPE_CPU";
      }
      else if (device_type & CL_DEVICE_TYPE_GPU)
      {
        s.device_name = "DEVICE_TYPE_GPU";
      }
      else if (device_type & CL_DEVICE_TYPE_ACCELERATOR)
      {
        s.device_name = "DEVICE_TYPE_ACCELERATOR";
      }

      entry = (tuning_db_entry_t *) bsearch (&s, tuning_db->entry_buf, tuning_db->entry_cnt, sizeof (tuning_db_entry_t), sort_by_tuning_db_entry);

      if (entry != ((void*)0)) break;
    }
  }



  hcfree (device_name_nospace);

  return entry;
}
