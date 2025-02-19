
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Args_per_line ;
 scalar_t__ GA ;
 scalar_t__ GB ;
 scalar_t__ GC ;
 scalar_t__ GS ;
 scalar_t__ GT ;
 int Gc ;
 int Gd ;
 int LISTS_SCHEMA_CUR ;
 int LISTS_SCHEMA_V1 ;
 int LISTS_SCHEMA_V3 ;
 int MAX_GROUPS ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_WRONLY ;
 int af_END ;
 int allow_negative ;
 int an_END ;
 int as_END ;
 int assert (int) ;
 int atol (char*) ;
 int ba_END ;
 int bl_END ;
 scalar_t__ change_user (char*) ;
 int close (int) ;
 int exit (int) ;
 scalar_t__ fdatasync (int) ;
 int flush_out () ;
 char* fname_last (char*) ;
 int fprintf (int ,char*,...) ;
 int get_dump_format (char*) ;
 int getopt (int,char**,char*) ;
 int gm_END ;
 char* groups_fname ;
 char* groups_fname2 ;
 int gs_END ;
 int mg_END ;
 scalar_t__ open (char*,int,...) ;
 char* optarg ;
 int optind ;
 int output_format ;
 int output_stats () ;
 int pr_END ;
 int process_app_fans_notify_row () ;
 int process_app_fans_row () ;
 int process_app_fans_settings_row () ;
 int process_banlist_row () ;
 int process_banlisted_row () ;
 int process_blacklist_row () ;
 int process_blacklisted_row () ;
 int process_fan_apps_balance_row () ;
 int process_fan_apps_notify_row () ;
 int process_fan_apps_row () ;
 int process_fan_apps_settings_row () ;
 int process_group_members_row () ;
 int process_groups_short_row () ;
 int process_member_groups_row () ;
 int process_photo_rev_row () ;
 int process_widget_comments_row () ;
 int process_widget_votes_row () ;
 char* progname ;
 int read (scalar_t__,scalar_t__,int) ;
 int read_record () ;
 int set_debug_handlers () ;
 int split_mod ;
 int split_rem ;
 scalar_t__ src_fd ;
 char* src_fname ;
 int sscanf (char*,char*,int*,int*) ;
 int start_binlog (int ,char*) ;
 int stderr ;
 int table_format ;
 int targ_fd ;
 char* targ_fname ;
 int usage () ;
 char* username ;
 scalar_t__ verbosity ;
 int wc_END ;
 int write (int,scalar_t__,int) ;
 int wv_END ;

int main (int argc, char *argv[]) {
  int i;
  set_debug_handlers();
  progname = argv[0];
  while ((i = getopt (argc, argv, "hvnu:m:f:g:o:")) != -1) {
    switch (i) {
    case 'v':
      verbosity++;
      break;
    case 'h':
      usage();
      return 2;
    case 'n':
      allow_negative = 1;
      break;
    case 'm':
      assert (sscanf(optarg, "%d,%d", &split_rem, &split_mod) == 2);
      assert (split_mod > 0 && split_mod <= 1000 && split_rem >= 0 && split_rem < split_mod);
      break;
    case 'f':
      table_format = get_dump_format(optarg);
      if (!table_format) {
 fprintf (stderr, "fatal: unsupported table dump format: %s\n", optarg);
 return 2;
      }
      break;
    case 'o':
      output_format = atol (optarg);
      break;
    case 'g':
      if (groups_fname) {
        groups_fname2 = optarg;
      } else {
        groups_fname = optarg;
      }
      break;
    case 'u':
      username = optarg;
      break;
    }
  }

  if (optind >= argc || optind + 2 < argc) {
    usage();
    return 2;
  }

  src_fname = argv[optind];

  if (username && change_user (username) < 0) {
    fprintf (stderr, "fatal: cannot change user to %s\n", username ? username : "(none)");
    return 1;
  }

  if (groups_fname) {
    src_fd = open (groups_fname, O_RDONLY);
    if (src_fd < 0) {
      fprintf (stderr, "cannot open %s: %m\n", groups_fname);
      return 1;
    }
    Gc = read (src_fd, GT, MAX_GROUPS);
    if (verbosity > 0) {
      fprintf (stderr, "read %d bytes from %s\n", Gc, groups_fname);
    }
    assert (Gc >= 0 && Gc < MAX_GROUPS);
    close (src_fd);
    src_fd = 0;
    GA = GT;
    GS = GC = GB = GA + ((Gc + 3) & -4);
  }

  if (groups_fname2) {
    src_fd = open (groups_fname2, O_RDONLY);
    if (src_fd < 0) {
      fprintf (stderr, "cannot open %s: %m\n", groups_fname2);
      return 1;
    }
    Gd = read (src_fd, GB, GA + MAX_GROUPS - GB);
    if (verbosity > 0) {
      fprintf (stderr, "read %d bytes from %s\n", Gd, groups_fname2);
    }
    assert (Gd >= 0 && Gd < MAX_GROUPS);
    close (src_fd);
    src_fd = 0;
    GS = GC = GB + ((Gd + 3) & -4);
  }

  src_fd = open (src_fname, O_RDONLY);
  if (src_fd < 0) {
    fprintf (stderr, "cannot open %s: %m\n", src_fname);
    return 1;
  }

  if (!table_format) {
    table_format = get_dump_format (fname_last (src_fname));
    if (!table_format) {
      fprintf (stderr, "fatal: cannot determine table type from filename %s\n", src_fname);
    }
  }

  if (optind + 1 < argc) {
    targ_fname = argv[optind+1];
    targ_fd = open (targ_fname, O_WRONLY | O_APPEND | O_CREAT, 0644);
    if (targ_fd < 0) {
      fprintf (stderr, "cannot create %s: %m\n", targ_fname);
      return 1;
    }
  } else {
    targ_fname = "stdout";
    targ_fd = 1;
  }

  switch (table_format) {
  case 132:
    assert (split_mod);
    assert (Gc > 0);
    Args_per_line = gm_END;
    start_binlog(LISTS_SCHEMA_V1, "");
    while (read_record() > 0) {
      process_group_members_row();
    }
    break;
  case 131:
    assert (split_mod);
    assert (Gc > 0);
    Args_per_line = mg_END;
    start_binlog(LISTS_SCHEMA_V1, "");
    while (read_record() > 0) {
      process_member_groups_row();
    }
    break;
  case 133:
    Args_per_line = gs_END;
    while (read_record() > 0) {
      process_groups_short_row();
    }
    if (output_format == 1 && Gc) {
      assert (write (targ_fd, GT, Gc) == Gc);
    }
    break;
  case 137:
    assert (split_mod);
    allow_negative = 1;
    Args_per_line = af_END;
    start_binlog(LISTS_SCHEMA_V1, "member_apps");
    while (read_record() > 0) {
      process_fan_apps_row();
    }
    break;
  case 145:
    assert (split_mod);
    Args_per_line = af_END;
    start_binlog(LISTS_SCHEMA_V1, "app_members");
    while (read_record() > 0) {
      process_app_fans_row();
    }
    break;
  case 134:
    assert (split_mod);
    Args_per_line = as_END;
    while (read_record() > 0) {
      process_fan_apps_settings_row();
    }
    break;
  case 143:
    assert (split_mod);
    Args_per_line = as_END;
    while (read_record() > 0) {
      process_app_fans_settings_row();
    }
    break;
  case 135:
    assert (split_mod);
    Args_per_line = an_END;
    while (read_record() > 0) {
      process_fan_apps_notify_row();
    }
    break;
  case 144:
    assert (split_mod);
    Args_per_line = an_END;
    while (read_record() > 0) {
      process_app_fans_notify_row();
    }
    break;
  case 136:
    assert (split_mod);
    start_binlog(LISTS_SCHEMA_V1, "member_apps_balance");
    Args_per_line = as_END;
    while (read_record() > 0) {
      process_fan_apps_balance_row();
    }
    break;
  case 138:
    assert (split_mod);
    start_binlog(LISTS_SCHEMA_CUR, "family");
    break;
  case 129:
    assert (split_mod);
    Args_per_line = wc_END;
    start_binlog (LISTS_SCHEMA_V3, "\x01\x02\x02\x01");
    while (read_record () > 0) {
      process_widget_comments_row ();
    }
    break;
  case 128:
    assert (split_mod);
    Args_per_line = wv_END;
    start_binlog (LISTS_SCHEMA_V1, "");
    while (read_record () > 0) {
      process_widget_votes_row ();
    }
    break;
  case 140:
    assert (split_mod);
    Args_per_line = bl_END;
    start_binlog (LISTS_SCHEMA_V1, "");
    while (read_record () > 0) {
      process_blacklist_row ();
    }
    break;
  case 139:
    assert (split_mod);
    Args_per_line = bl_END;
    start_binlog (LISTS_SCHEMA_V1, "");
    while (read_record () > 0) {
      process_blacklisted_row ();
    }
    break;
  case 142:
    assert (split_mod);
    Args_per_line = ba_END;

    while (read_record () > 0) {
      process_banlist_row ();
    }
    break;
  case 141:
    assert (split_mod);
    Args_per_line = ba_END;

    while (read_record () > 0) {
      process_banlisted_row ();
    }
    break;
  case 130:
    assert (split_mod);
    Args_per_line = pr_END;
    start_binlog (LISTS_SCHEMA_V3, "\x01\x03\x02\x01");
    while (read_record () > 0) {
      process_photo_rev_row ();
    }
    break;
  default:
    fprintf (stderr, "unknown table type\n");
    exit(1);
  }

  flush_out();
  if (targ_fd != 1) {
    if (fdatasync(targ_fd) < 0) {
      fprintf (stderr, "error syncing %s: %m", targ_fname);
      exit (1);
    }
    close (targ_fd);
  }

  if (verbosity > 0) {
    output_stats();
  }

  return 0;
}
