
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct option {char* member_0; int member_1; unsigned char member_3; int * member_2; } ;
struct TYPE_14__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
struct TYPE_15__ {int re_nsub; } ;
typedef TYPE_2__ regex_t ;
typedef TYPE_3__* iwdpm_t ;
struct TYPE_16__ {int is_debug; TYPE_1__* frontend; TYPE_1__* sim_wi_socket_addr; TYPE_1__* config; } ;


 char* LIBIMOBILEDEVICE_VERSION ;
 char* LIBPLIST_VERSION ;
 char* PACKAGE_STRING ;
 char* PACKAGE_VERSION ;
 int REG_EXTENDED ;
 int asprintf (TYPE_1__**,char*,char const*,char*) ;
 TYPE_1__* calloc (size_t,int) ;
 int free (TYPE_1__*) ;
 int getopt_long (int,char**,char*,struct option*,int*) ;
 TYPE_2__* malloc (int) ;
 char const* optarg ;
 int optind ;
 int printf (char*,char*,char*,char const*,...) ;
 int regcomp (TYPE_2__*,char*,int ) ;
 int regexec (TYPE_2__*,char const*,size_t,TYPE_1__*,int ) ;
 int regfree (TYPE_2__*) ;
 TYPE_1__* strdup (char const*) ;
 char* strrchr (char*,char) ;

int iwdpm_configure(iwdpm_t self, int argc, char **argv) {

  static struct option longopts[] = {
    {"udid", 1, ((void*)0), 'u'},
    {"config", 1, ((void*)0), 'c'},
    {"frontend", 1, ((void*)0), 'f'},
    {"no-frontend", 0, ((void*)0), 'F'},
    {"simulator-webinspector", 1, ((void*)0), 's'},
    {"debug", 0, ((void*)0), 'd'},
    {"help", 0, ((void*)0), 'h'},
    {"version", 0, ((void*)0), 'V'},
    {((void*)0), 0, ((void*)0), 0}
  };
  const char *DEFAULT_CONFIG = "null:9221,:9222-9322";
  const char *DEFAULT_FRONTEND =
     "http://chrome-devtools-frontend.appspot.com/static/27.0.1453.93/devtools.html";

  const char *DEFAULT_SIM_WI_SOCKET_ADDR = "localhost:27753";

  self->config = strdup(DEFAULT_CONFIG);
  self->frontend = strdup(DEFAULT_FRONTEND);
  self->sim_wi_socket_addr = strdup(DEFAULT_SIM_WI_SOCKET_ADDR);

  int ret = 0;
  while (!ret) {
    int c = getopt_long(argc, argv, "hVu:c:f:Fs:d", longopts, (int *)0);
    if (c == -1) {
      break;
    }
    switch (c) {
      case 'h':
        ret = -1;
        break;
      case 'V':
        printf(
            "%s\n"
            "Built with libimobiledevice v%s, libplist v%s\n",
            PACKAGE_STRING, LIBIMOBILEDEVICE_VERSION, LIBPLIST_VERSION);
        ret = -2;
        break;
      case 'u':
        {
          regex_t *re = malloc(sizeof(regex_t));
          regcomp(re, "^[a-fA-F0-9-]{25,}(:[0-9]+(-[0-9]+)?)?$", REG_EXTENDED);
          size_t ngroups = re->re_nsub + 1;
          regmatch_t *groups = calloc(ngroups, sizeof(regmatch_t));
          bool is_match = !regexec(re, optarg, ngroups, groups, 0);
          bool has_port = (is_match && groups[1].rm_so >= 0);
          free(groups);
          regfree(re);
          free(self->config);
          self->config = ((void*)0);
          if (!is_match) {
            ret = 2;
          } else if (!has_port) {
            if (asprintf(&self->config, "%s%s", optarg, ":9222") < 0) {
              ret = 2;
            }
          } else {
            self->config = strdup(optarg);
          }
        }
        break;
      case 'c':
        free(self->config);
        self->config = strdup(optarg);
        break;
      case 's':
        free(self->sim_wi_socket_addr);
        self->sim_wi_socket_addr = strdup(optarg);
        break;
      case 'f':
      case 'F':
        free(self->frontend);
        self->frontend = (c == 'f' ? strdup(optarg) : ((void*)0));
        break;
      case 'd':
        self->is_debug = 1;
        break;
      default:
        ret = 2;
        break;
    }
  }

  if (!ret && ((argc - optind) > 0)) {
    ret = 2;
  }

  if (ret && ret != -2) {
    char *name = strrchr(argv[0], '/');
    printf(
        "Usage: %s [OPTIONS]\n"
        "iOS WebKit Remote Debugging Protocol Proxy v%s.\n"
        "\n"
        "By default, the proxy will list all attached iOS devices on:\n"
        "  http://localhost:9221\n"
        "and assign each device an incremented port number, e.g.:\n"
        "  http://localhost:9222\n"
        "which lists the device's pages and provides inspector access.\n"
        "\n"
        "Your attached iOS device(s) must have the inspector enabled via:\n"
        "  Settings > Safari > Advanced > Web Inspector = ON\n"
        "and have one or more open browser pages.\n"
        "\n"
        "To view the DevTools UI, either use the above links (which use the"
        " \"frontend\"\nURL noted below) or use Chrome's built-in inspector,"
        " e.g.:\n"
        "  chrome-devtools://devtools/bundled/inspector.html?ws=localhost:"
        "9222/devtools/page/1"
        "\n\n"
        "OPTIONS:\n"
        "\n"
        "  -u UDID[:minPort-[maxPort]]\tTarget a specific device by its"
        " digital ID.\n"
        "        minPort defaults to 9222.  maxPort defaults to minPort.\n"
        "        This is shorthand for the following \"-c\" option.\n"
        "\n"
        "  -c, --config CSV\tUDID-to-port(s) configuration.\n"
        "        Defaults to:\n"
        "          %s\n"
        "        which lists devices (\"null:\") on port 9221 and assigns\n"
        "        all other devices (\":\") to the next unused port in the\n"
        "        9222-9322 range, in the (somewhat random) order that the\n"
        "        devices are detected.\n"
        "        The value can be the path to a file in the above format.\n"
        "\n"
        "  -f, --frontend URL\tDevTools frontend UI path or URL.\n"
        "        Defaults to:\n"
        "          %s\n"
        "        Examples:\n"
        "          * Use Chrome's built-in inspector:\n"
        "              chrome-devtools://devtools/bundled/inspector.html\n"
        "          * Use a local WebKit checkout:\n"
        "              /usr/local/WebCore/inspector/front-end/inspector.html\n"
        "          * Use an online copy of the inspector pages:\n"
        "              http://chrome-devtools-frontend.appspot.com/static/"
        "33.0.1722.0"
        "/devtools.html\n"
        "            where other online versions include:\n"
        "              18.0.1025.74\n"
        "              25.0.1364.169\n"
        "              28.0.1501.0\n"
        "              30.0.1599.92\n"
        "              31.0.1651.0\n"
        "              32.0.1689.3\n"
        "\n"
        "  -F, --no-frontend\tDisable the DevTools frontend.\n"
        "\n"
        "  -s, --simulator-webinspector\tSimulator web inspector socket\n"
        "        address. Provided value value needs to be in format\n"
        "        HOSTNAME:PORT or UNIX:PATH\n"
        "        Defaults to:\n"
        "          %s\n"
        "        Examples:\n"
        "          * TCP socket:\n"
        "            192.168.0.20:27753\n"
        "          * Unix domain socket:\n"
        "            unix:/private/tmp/com.apple.launchd.2j5k1TMh6i/"
        "com.apple.webinspectord_sim.socket\n"
        "\n"
        "  -d, --debug\t\tEnable debug output.\n"
        "  -h, --help\t\tPrint this usage information.\n"
        "  -V, --version\t\tPrint version information and exit.\n"
        "\n", (name ? name + 1 : argv[0]), PACKAGE_VERSION, DEFAULT_CONFIG,
      DEFAULT_FRONTEND, DEFAULT_SIM_WI_SOCKET_ADDR);
  }
  return ret;
}
