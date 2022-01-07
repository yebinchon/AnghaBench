
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ color_idx; char const* html_custom_css; char const* html_custom_js; char const* html_prefs; char const* html_report_title; int json_pretty_print; int max_items; int no_color; int no_column_names; int no_csv_summary; int no_parsing_spinner; int no_progress; int no_tab_scroll; int no_html_last_updated; char const* addr; char const* fifo_in; char const* fifo_out; int daemonize; char const* origin; char const* pidfile; char const* port; int real_time_html; char const* sslcert; char const* sslkey; char const* ws_url; char const* invalid_requests_log; scalar_t__ output_format_idx; int code444_as_404; int client_err_to_unique_count; int anonymize_ip; int store_accumulated_time; int all_static_files; int crawlers_only; int date_spec_hr; int double_decode; scalar_t__ enable_panel_idx; int hour_spec_min; int ignore_crawlers; scalar_t__ ignore_panel_idx; scalar_t__ ignore_referer_idx; int no_ip_validation; scalar_t__ hide_referer_idx; scalar_t__ ignore_status_idx; int num_tests; int process_and_exit; int real_os; scalar_t__ sort_panel_idx; scalar_t__ static_file_idx; scalar_t__ static_file_max_len; char const* geoip_database; int keep_db_files; int load_from_disk; char const* db_path; int compression; void* xmmap; void* tune_lmemb; void* tune_nmemb; void* tune_bnum; void* cache_ncnum; void* cache_lcnum; int static_files; int sort_panels; int ignore_statics; int ignore_status; int hide_referers; int ignore_referers; int ignore_panels; int enable_panels; int output_formats; void* color_scheme; int colors; } ;


 scalar_t__ ERANGE ;
 int EXIT_SUCCESS ;
 int IGNORE_LEVEL_PANEL ;
 int IGNORE_LEVEL_REQ ;
 int LOG_DEBUG (char*) ;
 scalar_t__ MAX_CUSTOM_COLORS ;
 scalar_t__ MAX_EXTENSIONS ;
 scalar_t__ MAX_IGNORE_REF ;
 scalar_t__ MAX_IGNORE_STATUS ;
 scalar_t__ MAX_OUTFORMATS ;
 int TC_BZ2 ;
 int TC_ZLIB ;
 scalar_t__ TOTAL_MODULES ;
 void* atoi (char const*) ;
 TYPE_1__ conf ;
 int display_default_config_file () ;
 scalar_t__ errno ;
 int exit (int ) ;
 int invalid_log_open (char const*) ;
 int set_array_opt (char const*,int ,scalar_t__*,scalar_t__) ;
 int set_date_format_str (char const*) ;
 int set_log_format_str (char const*) ;
 int set_time_format_str (char const*) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static void
parse_long_opt (const char *name, const char *oarg)
{
  if (!strcmp ("no-global-config", name))
    return;




  if (!strcmp ("log-format", name))
    set_log_format_str (oarg);


  if (!strcmp ("time-format", name))
    set_time_format_str (oarg);


  if (!strcmp ("date-format", name))
    set_date_format_str (oarg);




  if (!strcmp ("color", name))
    set_array_opt (oarg, conf.colors, &conf.color_idx, MAX_CUSTOM_COLORS);


  if (!strcmp ("color-scheme", name))
    conf.color_scheme = atoi (oarg);


  if (!strcmp ("html-custom-css", name))
    conf.html_custom_css = oarg;


  if (!strcmp ("html-custom-js", name))
    conf.html_custom_js = oarg;


  if (!strcmp ("html-prefs", name))
    conf.html_prefs = oarg;


  if (!strcmp ("html-report-title", name))
    conf.html_report_title = oarg;


  if (!strcmp ("json-pretty-print", name))
    conf.json_pretty_print = 1;


  if (!strcmp ("max-items", name)) {
    char *sEnd;
    int max = strtol (oarg, &sEnd, 10);
    if (oarg == sEnd || *sEnd != '\0' || errno == ERANGE)
      conf.max_items = 1;
    else
      conf.max_items = max;
  }


  if (!strcmp ("no-color", name))
    conf.no_color = 1;


  if (!strcmp ("no-column-names", name))
    conf.no_column_names = 1;


  if (!strcmp ("no-csv-summary", name))
    conf.no_csv_summary = 1;


  if (!strcmp ("no-parsing-spinner", name))
    conf.no_parsing_spinner = 1;


  if (!strcmp ("no-progress", name))
    conf.no_progress = 1;


  if (!strcmp ("no-tab-scroll", name))
    conf.no_tab_scroll = 1;


  if (!strcmp ("no-html-last-updated", name))
    conf.no_html_last_updated = 1;




  if (!strcmp ("addr", name))
    conf.addr = oarg;


  if (!strcmp ("fifo-in", name))
    conf.fifo_in = oarg;


  if (!strcmp ("fifo-out", name))
    conf.fifo_out = oarg;


  if (!strcmp ("daemonize", name))
    conf.daemonize = 1;


  if (!strcmp ("origin", name))
    conf.origin = oarg;


  if (!strcmp ("pid-file", name))
    conf.pidfile = oarg;


  if (!strcmp ("port", name)) {
    int port = strtol (oarg, ((void*)0), 10);
    if (port < 0 || port > 65535)
      LOG_DEBUG (("Invalid port."));
    else
      conf.port = oarg;
  }


  if (!strcmp ("real-time-html", name))
    conf.real_time_html = 1;


  if (!strcmp ("ssl-cert", name))
    conf.sslcert = oarg;


  if (!strcmp ("ssl-key", name))
    conf.sslkey = oarg;


  if (!strcmp ("ws-url", name))
    conf.ws_url = oarg;




  if (!strcmp ("invalid-requests", name)) {
    conf.invalid_requests_log = oarg;
    invalid_log_open (conf.invalid_requests_log);
  }


  if (!strcmp ("output", name))
    set_array_opt (oarg, conf.output_formats, &conf.output_format_idx,
                   MAX_OUTFORMATS);




  if (!strcmp ("444-as-404", name))
    conf.code444_as_404 = 1;


  if (!strcmp ("4xx-to-unique-count", name))
    conf.client_err_to_unique_count = 1;


  if (!strcmp ("anonymize-ip", name))
    conf.anonymize_ip = 1;


  if (!strcmp ("accumulated-time", name))
    conf.store_accumulated_time = 1;


  if (!strcmp ("all-static-files", name))
    conf.all_static_files = 1;


  if (!strcmp ("crawlers-only", name))
    conf.crawlers_only = 1;


  if (!strcmp ("date-spec", name) && !strcmp (oarg, "hr"))
    conf.date_spec_hr = 1;


  if (!strcmp ("double-decode", name))
    conf.double_decode = 1;


  if (!strcmp ("enable-panel", name))
    set_array_opt (oarg, conf.enable_panels, &conf.enable_panel_idx,
                   TOTAL_MODULES);


  if (!strcmp ("hour-spec", name) && !strcmp (oarg, "min"))
    conf.hour_spec_min = 1;


  if (!strcmp ("ignore-crawlers", name))
    conf.ignore_crawlers = 1;


  if (!strcmp ("ignore-panel", name))
    set_array_opt (oarg, conf.ignore_panels, &conf.ignore_panel_idx,
                   TOTAL_MODULES);


  if (!strcmp ("ignore-referer", name))
    set_array_opt (oarg, conf.ignore_referers, &conf.ignore_referer_idx,
                   MAX_IGNORE_REF);


  if (!strcmp ("no-ip-validation", name))
    conf.no_ip_validation = 1;


  if (!strcmp ("hide-referer", name))
    set_array_opt (oarg, conf.hide_referers, &conf.hide_referer_idx,
                   MAX_IGNORE_REF);


  if (!strcmp ("ignore-status", name))
    set_array_opt (oarg, conf.ignore_status, &conf.ignore_status_idx,
                   MAX_IGNORE_STATUS);


  if (!strcmp ("ignore-statics", name)) {
    if (!strcmp ("req", oarg))
      conf.ignore_statics = IGNORE_LEVEL_REQ;
    else if (!strcmp ("panel", oarg))
      conf.ignore_statics = IGNORE_LEVEL_PANEL;
    else
      LOG_DEBUG (("Invalid statics ignore option."));
  }


  if (!strcmp ("num-tests", name)) {
    char *sEnd;
    int tests = strtol (oarg, &sEnd, 10);
    if (oarg == sEnd || *sEnd != '\0' || errno == ERANGE)
      return;
    conf.num_tests = tests >= 0 ? tests : 0;
  }


  if (!strcmp ("process-and-exit", name))
    conf.process_and_exit = 1;


  if (!strcmp ("real-os", name))
    conf.real_os = 1;


  if (!strcmp ("sort-panel", name))
    set_array_opt (oarg, conf.sort_panels, &conf.sort_panel_idx, TOTAL_MODULES);


  if (!strcmp ("static-file", name) && conf.static_file_idx < MAX_EXTENSIONS) {
    if (conf.static_file_max_len < strlen (oarg))
      conf.static_file_max_len = strlen (oarg);
    set_array_opt (oarg, conf.static_files, &conf.static_file_idx,
                   MAX_EXTENSIONS);
  }




  if (!strcmp ("geoip-city-data", name) || !strcmp ("geoip-database", name))
    conf.geoip_database = oarg;




  if (!strcmp ("keep-db-files", name))
    conf.keep_db_files = 1;


  if (!strcmp ("load-from-disk", name))
    conf.load_from_disk = 1;


  if (!strcmp ("db-path", name))
    conf.db_path = oarg;


  if (!strcmp ("cache-lcnum", name))
    conf.cache_lcnum = atoi (oarg);


  if (!strcmp ("cache-ncnum", name))
    conf.cache_ncnum = atoi (oarg);


  if (!strcmp ("tune-bnum", name))
    conf.tune_bnum = atoi (oarg);


  if (!strcmp ("tune-nmemb", name))
    conf.tune_nmemb = atoi (oarg);


  if (!strcmp ("tune-lmemb", name))
    conf.tune_lmemb = atoi (oarg);


  if (!strcmp ("xmmap", name))
    conf.xmmap = atoi (oarg);


  if (!strcmp ("compression", name)) {
  }


  if (!strcmp ("dcf", name)) {
    display_default_config_file ();
    exit (EXIT_SUCCESS);
  }
}
