#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ color_idx; char const* html_custom_css; char const* html_custom_js; char const* html_prefs; char const* html_report_title; int json_pretty_print; int max_items; int no_color; int no_column_names; int no_csv_summary; int no_parsing_spinner; int no_progress; int no_tab_scroll; int no_html_last_updated; char const* addr; char const* fifo_in; char const* fifo_out; int daemonize; char const* origin; char const* pidfile; char const* port; int real_time_html; char const* sslcert; char const* sslkey; char const* ws_url; char const* invalid_requests_log; scalar_t__ output_format_idx; int code444_as_404; int client_err_to_unique_count; int anonymize_ip; int store_accumulated_time; int all_static_files; int crawlers_only; int date_spec_hr; int double_decode; scalar_t__ enable_panel_idx; int hour_spec_min; int ignore_crawlers; scalar_t__ ignore_panel_idx; scalar_t__ ignore_referer_idx; int no_ip_validation; scalar_t__ hide_referer_idx; scalar_t__ ignore_status_idx; int num_tests; int process_and_exit; int real_os; scalar_t__ sort_panel_idx; scalar_t__ static_file_idx; scalar_t__ static_file_max_len; char const* geoip_database; int keep_db_files; int load_from_disk; char const* db_path; int /*<<< orphan*/  compression; void* xmmap; void* tune_lmemb; void* tune_nmemb; void* tune_bnum; void* cache_ncnum; void* cache_lcnum; int /*<<< orphan*/  static_files; int /*<<< orphan*/  sort_panels; int /*<<< orphan*/  ignore_statics; int /*<<< orphan*/  ignore_status; int /*<<< orphan*/  hide_referers; int /*<<< orphan*/  ignore_referers; int /*<<< orphan*/  ignore_panels; int /*<<< orphan*/  enable_panels; int /*<<< orphan*/  output_formats; void* color_scheme; int /*<<< orphan*/  colors; } ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  IGNORE_LEVEL_PANEL ; 
 int /*<<< orphan*/  IGNORE_LEVEL_REQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ MAX_CUSTOM_COLORS ; 
 scalar_t__ MAX_EXTENSIONS ; 
 scalar_t__ MAX_IGNORE_REF ; 
 scalar_t__ MAX_IGNORE_STATUS ; 
 scalar_t__ MAX_OUTFORMATS ; 
 int /*<<< orphan*/  TC_BZ2 ; 
 int /*<<< orphan*/  TC_ZLIB ; 
 scalar_t__ TOTAL_MODULES ; 
 void* FUNC1 (char const*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char const*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int FUNC11 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC12 (const char *name, const char *oarg)
{
  if (!FUNC9 ("no-global-config", name))
    return;

  /* LOG & DATE FORMAT OPTIONS
   * ========================= */
  /* log format */
  if (!FUNC9 ("log-format", name))
    FUNC7 (oarg);

  /* time format */
  if (!FUNC9 ("time-format", name))
    FUNC8 (oarg);

  /* date format */
  if (!FUNC9 ("date-format", name))
    FUNC6 (oarg);

  /* USER INTERFACE OPTIONS
   * ========================= */
  /* colors */
  if (!FUNC9 ("color", name))
    FUNC5 (oarg, conf.colors, &conf.color_idx, MAX_CUSTOM_COLORS);

  /* color scheme */
  if (!FUNC9 ("color-scheme", name))
    conf.color_scheme = FUNC1 (oarg);

  /* html custom CSS */
  if (!FUNC9 ("html-custom-css", name))
    conf.html_custom_css = oarg;

  /* html custom JS */
  if (!FUNC9 ("html-custom-js", name))
    conf.html_custom_js = oarg;

  /* html JSON object containing default preferences */
  if (!FUNC9 ("html-prefs", name))
    conf.html_prefs = oarg;

  /* html report title */
  if (!FUNC9 ("html-report-title", name))
    conf.html_report_title = oarg;

  /* json pretty print */
  if (!FUNC9 ("json-pretty-print", name))
    conf.json_pretty_print = 1;

  /* max items */
  if (!FUNC9 ("max-items", name)) {
    char *sEnd;
    int max = FUNC11 (oarg, &sEnd, 10);
    if (oarg == sEnd || *sEnd != '\0' || errno == ERANGE)
      conf.max_items = 1;
    else
      conf.max_items = max;
  }

  /* no color */
  if (!FUNC9 ("no-color", name))
    conf.no_color = 1;

  /* no columns */
  if (!FUNC9 ("no-column-names", name))
    conf.no_column_names = 1;

  /* no csv summary */
  if (!FUNC9 ("no-csv-summary", name))
    conf.no_csv_summary = 1;

  /* no parsing spinner */
  if (!FUNC9 ("no-parsing-spinner", name))
    conf.no_parsing_spinner = 1;

  /* no progress */
  if (!FUNC9 ("no-progress", name))
    conf.no_progress = 1;

  /* no tab scroll */
  if (!FUNC9 ("no-tab-scroll", name))
    conf.no_tab_scroll = 1;

  /* no html last updated field */
  if (!FUNC9 ("no-html-last-updated", name))
    conf.no_html_last_updated = 1;

  /* SERVER OPTIONS
   * ========================= */
  /* address to bind to */
  if (!FUNC9 ("addr", name))
    conf.addr = oarg;

  /* FIFO in (read) */
  if (!FUNC9 ("fifo-in", name))
    conf.fifo_in = oarg;

  /* FIFO out (write) */
  if (!FUNC9 ("fifo-out", name))
    conf.fifo_out = oarg;

  /* run program as a Unix daemon */
  if (!FUNC9 ("daemonize", name))
    conf.daemonize = 1;

  /* WebSocket origin */
  if (!FUNC9 ("origin", name))
    conf.origin = oarg;

  /* PID file to write */
  if (!FUNC9 ("pid-file", name))
    conf.pidfile = oarg;

  /* port to use */
  if (!FUNC9 ("port", name)) {
    int port = FUNC11 (oarg, NULL, 10);
    if (port < 0 || port > 65535)
      FUNC0 (("Invalid port."));
    else
      conf.port = oarg;
  }

  /* real time HTML */
  if (!FUNC9 ("real-time-html", name))
    conf.real_time_html = 1;

  /* TLS/SSL certificate */
  if (!FUNC9 ("ssl-cert", name))
    conf.sslcert = oarg;

  /* TLS/SSL private key */
  if (!FUNC9 ("ssl-key", name))
    conf.sslkey = oarg;

  /* URL to which the WebSocket server responds. */
  if (!FUNC9 ("ws-url", name))
    conf.ws_url = oarg;

  /* FILE OPTIONS
   * ========================= */
  /* invalid requests */
  if (!FUNC9 ("invalid-requests", name)) {
    conf.invalid_requests_log = oarg;
    FUNC4 (conf.invalid_requests_log);
  }

  /* output file */
  if (!FUNC9 ("output", name))
    FUNC5 (oarg, conf.output_formats, &conf.output_format_idx,
                   MAX_OUTFORMATS);

  /* PARSE OPTIONS
   * ========================= */
  /* 444 as 404 */
  if (!FUNC9 ("444-as-404", name))
    conf.code444_as_404 = 1;

  /* 4xx to unique count */
  if (!FUNC9 ("4xx-to-unique-count", name))
    conf.client_err_to_unique_count = 1;

  /* anonymize ip */
  if (!FUNC9 ("anonymize-ip", name))
    conf.anonymize_ip = 1;

  /* store accumulated time in tcb */
  if (!FUNC9 ("accumulated-time", name))
    conf.store_accumulated_time = 1;

  /* all static files */
  if (!FUNC9 ("all-static-files", name))
    conf.all_static_files = 1;

  /* crawlers only */
  if (!FUNC9 ("crawlers-only", name))
    conf.crawlers_only = 1;

  /* date specificity */
  if (!FUNC9 ("date-spec", name) && !FUNC9 (oarg, "hr"))
    conf.date_spec_hr = 1;

  /* double decode */
  if (!FUNC9 ("double-decode", name))
    conf.double_decode = 1;

  /* enable panel */
  if (!FUNC9 ("enable-panel", name))
    FUNC5 (oarg, conf.enable_panels, &conf.enable_panel_idx,
                   TOTAL_MODULES);

  /* hour specificity */
  if (!FUNC9 ("hour-spec", name) && !FUNC9 (oarg, "min"))
    conf.hour_spec_min = 1;

  /* ignore crawlers */
  if (!FUNC9 ("ignore-crawlers", name))
    conf.ignore_crawlers = 1;

  /* ignore panel */
  if (!FUNC9 ("ignore-panel", name))
    FUNC5 (oarg, conf.ignore_panels, &conf.ignore_panel_idx,
                   TOTAL_MODULES);

  /* ignore referer */
  if (!FUNC9 ("ignore-referer", name))
    FUNC5 (oarg, conf.ignore_referers, &conf.ignore_referer_idx,
                   MAX_IGNORE_REF);

  /* client IP validation */
  if (!FUNC9 ("no-ip-validation", name))
    conf.no_ip_validation = 1;

  /* hide referer from report (e.g. within same site) */
  if (!FUNC9 ("hide-referer", name))
    FUNC5 (oarg, conf.hide_referers, &conf.hide_referer_idx,
                   MAX_IGNORE_REF);

  /* ignore status code */
  if (!FUNC9 ("ignore-status", name))
    FUNC5 (oarg, conf.ignore_status, &conf.ignore_status_idx,
                   MAX_IGNORE_STATUS);

  /* ignore static requests */
  if (!FUNC9 ("ignore-statics", name)) {
    if (!FUNC9 ("req", oarg))
      conf.ignore_statics = IGNORE_LEVEL_REQ;
    else if (!FUNC9 ("panel", oarg))
      conf.ignore_statics = IGNORE_LEVEL_PANEL;
    else
      FUNC0 (("Invalid statics ignore option."));
  }

  /* number of line tests */
  if (!FUNC9 ("num-tests", name)) {
    char *sEnd;
    int tests = FUNC11 (oarg, &sEnd, 10);
    if (oarg == sEnd || *sEnd != '\0' || errno == ERANGE)
      return;
    conf.num_tests = tests >= 0 ? tests : 0;
  }

  /* process and exit */
  if (!FUNC9 ("process-and-exit", name))
    conf.process_and_exit = 1;

  /* real os */
  if (!FUNC9 ("real-os", name))
    conf.real_os = 1;

  /* sort view */
  if (!FUNC9 ("sort-panel", name))
    FUNC5 (oarg, conf.sort_panels, &conf.sort_panel_idx, TOTAL_MODULES);

  /* static file */
  if (!FUNC9 ("static-file", name) && conf.static_file_idx < MAX_EXTENSIONS) {
    if (conf.static_file_max_len < FUNC10 (oarg))
      conf.static_file_max_len = FUNC10 (oarg);
    FUNC5 (oarg, conf.static_files, &conf.static_file_idx,
                   MAX_EXTENSIONS);
  }

  /* GEOIP OPTIONS
   * ========================= */
  /* specifies the path of the GeoIP City database file */
  if (!FUNC9 ("geoip-city-data", name) || !FUNC9 ("geoip-database", name))
    conf.geoip_database = oarg;

  /* BTREE OPTIONS
   * ========================= */
  /* keep database files */
  if (!FUNC9 ("keep-db-files", name))
    conf.keep_db_files = 1;

  /* load data from disk */
  if (!FUNC9 ("load-from-disk", name))
    conf.load_from_disk = 1;

  /* specifies the path of the database file */
  if (!FUNC9 ("db-path", name))
    conf.db_path = oarg;

  /* specifies the maximum number of leaf nodes to be cached */
  if (!FUNC9 ("cache-lcnum", name))
    conf.cache_lcnum = FUNC1 (oarg);

  /* specifies the maximum number of non-leaf nodes to be cached */
  if (!FUNC9 ("cache-ncnum", name))
    conf.cache_ncnum = FUNC1 (oarg);

  /* number of elements of the bucket array */
  if (!FUNC9 ("tune-bnum", name))
    conf.tune_bnum = FUNC1 (oarg);

  /* number of members in each non-leaf page */
  if (!FUNC9 ("tune-nmemb", name))
    conf.tune_nmemb = FUNC1 (oarg);

  /* number of members in each leaf page */
  if (!FUNC9 ("tune-lmemb", name))
    conf.tune_lmemb = FUNC1 (oarg);

  /* set the size in bytes of the extra mapped memory */
  if (!FUNC9 ("xmmap", name))
    conf.xmmap = FUNC1 (oarg);

  /* specifies that each page is compressed with X encoding */
  if (!FUNC9 ("compression", name)) {
#ifdef HAVE_ZLIB
    if (!strcmp ("zlib", oarg))
      conf.compression = TC_ZLIB;
#endif
#ifdef HAVE_BZ2
    if (!strcmp ("bz2", oarg))
      conf.compression = TC_BZ2;
#endif
  }

  /* default config file --dwf */
  if (!FUNC9 ("dcf", name)) {
    FUNC2 ();
    FUNC3 (EXIT_SUCCESS);
  }
}