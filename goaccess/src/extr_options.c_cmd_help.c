
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 char* GO_VERSION ;
 char* INFO_HELP_EXAMPLES ;
 char* INFO_HELP_FOLLOWING_OPTS ;
 char* INFO_MORE_INFO ;
 int TC_BNUM ;
 char* TC_DBPATH ;
 int TC_LCNUM ;
 int TC_LMEMB ;
 int TC_MMAP ;
 int TC_NCNUM ;
 int TC_NMEMB ;
 int exit (int ) ;
 int printf (char*,char*,...) ;

void
cmd_help (void)
{
  printf ("\nGoAccess - %s\n\n", GO_VERSION);
  printf (
  "Usage: "
  "goaccess [filename] [ options ... ] [-c][-M][-H][-S][-q][-d][...]\n"
  "%s:\n\n", INFO_HELP_FOLLOWING_OPTS);

  printf (

  "Log & Date Format Options\n\n"
  "  --date-format=<dateformat>      - Specify log date format. e.g., %%d/%%b/%%Y\n"
  "  --log-format=<logformat>        - Specify log format. Inner quotes need to be\n"
  "                                    escaped, or use single quotes.\n"
  "  --time-format=<timeformat>      - Specify log time format. e.g., %%H:%%M:%%S\n\n"


  "User Interface Options\n\n"
  "  -c --config-dialog              - Prompt log/date/time configuration window.\n"
  "  -i --hl-header                  - Color highlight active panel.\n"
  "  -m --with-mouse                 - Enable mouse support on main dashboard.\n"
  "  --color=<fg:bg[attrs, PANEL]>   - Specify custom colors. See manpage for more\n"
  "                                    details and options.\n"
  "  --color-scheme=<1|2|3>          - Schemes: 1 => Grey, 2 => Green, 3 => Monokai.\n"
  "  --html-custom-css=<path.css>    - Specify a custom CSS file in the HTML report.\n"
  "  --html-custom-js=<path.js>      - Specify a custom JS file in the HTML report.\n"
  "  --html-prefs=<json_obj>         - Set default HTML report preferences.\n"
  "  --html-report-title=<title>     - Set HTML report page title and header.\n"
  "  --json-pretty-print             - Format JSON output w/ tabs & newlines.\n"
  "  --max-items                     - Maximum number of items to show per panel.\n"
  "                                    See man page for limits.\n"
  "  --no-color                      - Disable colored output.\n"
  "  --no-column-names               - Don't write column names in term output.\n"
  "  --no-csv-summary                - Disable summary metrics on the CSV output.\n"
  "  --no-html-last-updated          - Hide HTML last updated field.\n"
  "  --no-parsing-spinner            - Disable progress metrics and parsing spinner.\n"
  "  --no-progress                   - Disable progress metrics.\n"
  "  --no-tab-scroll                 - Disable scrolling through panels on TAB.\n"
  "\n"


  "Server Options\n\n"
  "  --addr=<addr>                   - Specify IP address to bind server to.\n"
  "  --daemonize                     - Run as daemon (if --real-time-html enabled).\n"
  "  --fifo-in=<path>                - Path to read named pipe (FIFO).\n"
  "  --fifo-out=<path>               - Path to write named pipe (FIFO).\n"
  "  --origin=<addr>                 - Ensure clients send the specified origin header\n"
  "                                    upon the WebSocket handshake.\n"
  "  --pid-file=<path>               - Write PID to a file when --daemonize is used.\n"
  "  --port=<port>                   - Specify the port to use.\n"
  "  --real-time-html                - Enable real-time HTML output.\n"
  "  --ssl-cert=<cert.crt>           - Path to TLS/SSL certificate.\n"
  "  --ssl-key=<priv.key>            - Path to TLS/SSL private key.\n"
  "  --ws-url=<url>                  - URL to which the WebSocket server responds.\n"
  "\n"


  "File Options\n\n"
  "  -                               - The log file to parse is read from stdin.\n"
  "  -f --log-file=<filename>        - Path to input log file.\n"
  "  -S --log-size=<number>          - Specify the log size, useful when piping in logs.\n"
  "  -l --debug-file=<filename>      - Send all debug messages to the specified\n"
  "                                    file.\n"
  "  -p --config-file=<filename>     - Custom configuration file.\n"
  "  --invalid-requests=<filename>   - Log invalid requests to the specified file.\n"
  "  --no-global-config              - Don't load global configuration file.\n"
  "\n"


  "Parse Options\n\n"
  "  -a --agent-list                 - Enable a list of user-agents by host.\n"
  "  -b --browsers-file=<path>       - Use additional custom list of browsers.\n"
  "  -d --with-output-resolver       - Enable IP resolver on HTML|JSON output.\n"
  "  -e --exclude-ip=<IP>            - Exclude one or multiple IPv4/6. Allows IP\n"
  "                                    ranges e.g. 192.168.0.1-192.168.0.10\n"
  "  -H --http-protocol=<yes|no>     - Set/unset HTTP request protocol if found.\n"
  "  -M --http-method=<yes|no>       - Set/unset HTTP request method if found.\n"
  "  -o --output=file.html|json|csv  - Output either an HTML, JSON or a CSV file.\n"
  "  -q --no-query-string            - Ignore request's query string. Removing the\n"
  "                                    query string can greatly decrease memory\n"
  "                                    consumption.\n"
  "  -r --no-term-resolver           - Disable IP resolver on terminal output.\n"
  "  --444-as-404                    - Treat non-standard status code 444 as 404.\n"
  "  --4xx-to-unique-count           - Add 4xx client errors to the unique visitors\n"
  "                                    count.\n"



  "  --anonymize-ip                  - Anonymize IP addresses before outputting to report.\n"
  "  --all-static-files              - Include static files with a query string.\n"
  "  --crawlers-only                 - Parse and display only crawlers.\n"
  "  --date-spec=<date|hr>           - Date specificity. Possible values: `date`\n"
  "                                    (default), or `hr`.\n"
  "  --double-decode                 - Decode double-encoded values.\n"
  "  --enable-panel=<PANEL>          - Enable parsing/displaying the given panel.\n"
  "  --hide-referer=<NEEDLE>         - Hide a referer but still count it. Wild cards\n"
  "                                    are allowed. i.e., *.bing.com\n"
  "  --hour-spec=<hr|min>            - Hour specificity. Possible values: `hr`\n"
  "                                    (default), or `min` (tenth of a min).\n"
  "  --ignore-crawlers               - Ignore crawlers.\n"
  "  --ignore-panel=<PANEL>          - Ignore parsing/displaying the given panel.\n"
  "  --ignore-referer=<NEEDLE>       - Ignore a referer from being counted. Wild cards\n"
  "                                    are allowed. i.e., *.bing.com\n"
  "  --ignore-statics=<req|panel>    - Ignore static requests.\n"
  "                                    req => Ignore from valid requests.\n"
  "                                    panel => Ignore from valid requests and panels.\n"
  "  --ignore-status=<CODE>          - Ignore parsing the given status code.\n"
  "  --num-tests=<number>            - Number of lines to test. >= 0 (10 default)\n"
  "  --process-and-exit              - Parse log and exit without outputting data.\n"
  "  --real-os                       - Display real OS names. e.g, Windows XP, Snow\n"
  "                                    Leopard.\n"
  "  --sort-panel=PANEL,METRIC,ORDER - Sort panel on initial load. For example:\n"
  "                                    --sort-panel=VISITORS,BY_HITS,ASC. See\n"
  "                                    manpage for a list of panels/fields.\n"
  "  --static-file=<extension>       - Add static file extension. e.g.: .mp3.\n"
  "                                    Extensions are case sensitive.\n"
  "\n"
  "Other Options\n\n"
  "  -h --help                       - This help.\n"
  "  -V --version                    - Display version information and exit.\n"
  "  -s --storage                    - Display current storage method. e.g., B+\n"
  "                                    Tree, Hash.\n"
  "  --dcf                           - Display the path of the default config\n"
  "                                    file when `-p` is not used.\n"
  "\n"

  "%s `man goaccess`.\n\n"
  "%s: http://goaccess.io\n"
  "GoAccess Copyright (C) 2009-2017 by Gerardo Orellana"
  "\n\n"



  , INFO_HELP_EXAMPLES, INFO_MORE_INFO
  );
  exit (EXIT_FAILURE);
}
