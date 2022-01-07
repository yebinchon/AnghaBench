; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_main.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"b:c:l:p:n:dhu:vfFP:X:E:H:T:y:z:\00", align 1
@verbosity = common dso_local global i32 0, align 4
@default_cluster_mode = common dso_local global i32 0, align 4
@only_first_cluster = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i64 0, align 8
@MAX_CONNECTIONS = common dso_local global i64 0, align 8
@default_min_connections = common dso_local global i64 0, align 8
@default_max_connections = common dso_local global i64 0, align 8
@port = common dso_local global i8* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@aes_pwd_file = common dso_local global i8* null, align 8
@extension_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@CLUSTER_MODE_TEXT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"lists\00", align 1
@CLUSTER_MODE_LISTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@CLUSTER_MODE_HINTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@CLUSTER_MODE_LOGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"magus\00", align 1
@CLUSTER_MODE_MAGUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"news\00", align 1
@CLUSTER_MODE_NEWS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"roundrobin\00", align 1
@CLUSTER_MODE_ROUNDROBIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"bayes\00", align 1
@CLUSTER_MODE_BAYES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"antispam\00", align 1
@CLUSTER_MODE_ANTISPAM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CLUSTER_MODE_TEMP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"support\00", align 1
@CLUSTER_MODE_SUPPORT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"photo\00", align 1
@CLUSTER_MODE_PHOTO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"dot\00", align 1
@CLUSTER_MODE_DOT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"search\00", align 1
@CLUSTER_MODE_MERGE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [35 x i8] c"Can not enable to merge extensions\00", align 1
@CLUSTER_MODE_SEARCH = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"targ\00", align 1
@CLUSTER_MODE_TARG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"news_ug\00", align 1
@CLUSTER_MODE_NEWS_UG = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"news_g\00", align 1
@CLUSTER_MODE_NEWS_G = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"news_comm\00", align 1
@CLUSTER_MODE_NEWS_COMM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"newsr\00", align 1
@CLUSTER_MODE_NEWSR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"statsx\00", align 1
@CLUSTER_MODE_STATSX = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"friends\00", align 1
@CLUSTER_MODE_FRIENDS = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"searchx\00", align 1
@CLUSTER_MODE_SEARCHX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"watchcat\00", align 1
@CLUSTER_MODE_WATCHCAT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"hints_merge\00", align 1
@CLUSTER_MODE_HINTS_MERGE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"random_merge\00", align 1
@CLUSTER_MODE_RANDOM_MERGE = common dso_local global i32 0, align 4
@ping_interval = common dso_local global i32 0, align 4
@MIN_PING_INTERVAL = common dso_local global i32 0, align 4
@MAX_PING_INTERVAL = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"%lld%c\00", align 1
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [110 x i8] c"WARNING: adjusted default maximum number of connections to be equal to default minimum number of connections\0A\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"fatal: cannot raise open file limit to %d\0A\00", align 1
@config_filename = common dso_local global i8* null, align 8
@.str.31 = private unnamed_addr constant [22 x i8] c"config check failed!\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"config loaded!\0A\00", align 1
@start_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i32 (...) @set_debug_handlers()
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** @progname, align 8
  store i8* null, i8** %9, align 8
  br label %14

14:                                               ; preds = %469, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt(i32 %15, i8** %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %470

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %469 [
    i32 118, label %21
    i32 70, label %24
    i32 102, label %27
    i32 104, label %30
    i32 98, label %32
    i32 99, label %40
    i32 121, label %53
    i32 122, label %66
    i32 112, label %79
    i32 110, label %82
    i32 117, label %91
    i32 108, label %93
    i32 80, label %95
    i32 88, label %97
    i32 84, label %415
    i32 69, label %428
    i32 100, label %430
    i32 72, label %433
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @verbosity, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @verbosity, align 4
  br label %469

24:                                               ; preds = %19
  %25 = load i32, i32* @default_cluster_mode, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @default_cluster_mode, align 4
  br label %469

27:                                               ; preds = %19
  %28 = load i32, i32* @only_first_cluster, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @only_first_cluster, align 4
  br label %469

30:                                               ; preds = %19
  %31 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %523

32:                                               ; preds = %19
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i8* @atoi(i8* %33)
  store i8* %34, i8** @backlog, align 8
  %35 = load i8*, i8** @backlog, align 8
  %36 = icmp ule i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i8*, i8** @BACKLOG, align 8
  store i8* %38, i8** @backlog, align 8
  br label %39

39:                                               ; preds = %37, %32
  br label %469

40:                                               ; preds = %19
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @atoi(i8* %41)
  %43 = ptrtoint i8* %42 to i64
  store i64 %43, i64* @maxconn, align 8
  %44 = load i64, i64* @maxconn, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* @maxconn, align 8
  %48 = load i64, i64* @MAX_CONNECTIONS, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %40
  %51 = load i64, i64* @MAX_CONNECTIONS, align 8
  store i64 %51, i64* @maxconn, align 8
  br label %52

52:                                               ; preds = %50, %46
  br label %469

53:                                               ; preds = %19
  %54 = load i8*, i8** @optarg, align 8
  %55 = call i8* @atoi(i8* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 1000
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* @default_min_connections, align 8
  br label %65

65:                                               ; preds = %62, %59, %53
  br label %469

66:                                               ; preds = %19
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i8* @atoi(i8* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load i32, i32* %6, align 4
  %74 = icmp sle i32 %73, 1000
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* @default_max_connections, align 8
  br label %78

78:                                               ; preds = %75, %72, %66
  br label %469

79:                                               ; preds = %19
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i8* @atoi(i8* %80)
  store i8* %81, i8** @port, align 8
  br label %469

82:                                               ; preds = %19
  store i32 0, i32* @errno, align 4
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i8* @atoi(i8* %83)
  %85 = call i32 @nice(i8* %84)
  %86 = load i32, i32* @errno, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  br label %469

91:                                               ; preds = %19
  %92 = load i8*, i8** @optarg, align 8
  store i8* %92, i8** @username, align 8
  br label %469

93:                                               ; preds = %19
  %94 = load i8*, i8** @optarg, align 8
  store i8* %94, i8** @logname, align 8
  br label %469

95:                                               ; preds = %19
  %96 = load i8*, i8** @optarg, align 8
  store i8* %96, i8** @aes_pwd_file, align 8
  br label %469

97:                                               ; preds = %19
  %98 = load i32, i32* @extension_name, align 4
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @strncpy(i32 %98, i8* %99, i32 15)
  %101 = load i8*, i8** @optarg, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %97
  %105 = load i32, i32* @CLUSTER_MODE_TEXT, align 4
  %106 = load i32, i32* @default_cluster_mode, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* @default_cluster_mode, align 4
  br label %414

108:                                              ; preds = %97
  %109 = load i8*, i8** @optarg, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* @CLUSTER_MODE_LISTS, align 4
  %114 = load i32, i32* @default_cluster_mode, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* @default_cluster_mode, align 4
  br label %413

116:                                              ; preds = %108
  %117 = load i8*, i8** @optarg, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @CLUSTER_MODE_HINTS, align 4
  %122 = load i32, i32* @default_cluster_mode, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* @default_cluster_mode, align 4
  br label %412

124:                                              ; preds = %116
  %125 = load i8*, i8** @optarg, align 8
  %126 = call i32 @strcmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* @CLUSTER_MODE_LOGS, align 4
  %130 = load i32, i32* @default_cluster_mode, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* @default_cluster_mode, align 4
  br label %411

132:                                              ; preds = %124
  %133 = load i8*, i8** @optarg, align 8
  %134 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @CLUSTER_MODE_MAGUS, align 4
  %138 = load i32, i32* @default_cluster_mode, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* @default_cluster_mode, align 4
  br label %410

140:                                              ; preds = %132
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* @CLUSTER_MODE_NEWS, align 4
  %146 = load i32, i32* @default_cluster_mode, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* @default_cluster_mode, align 4
  br label %409

148:                                              ; preds = %140
  %149 = load i8*, i8** @optarg, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @CLUSTER_MODE_ROUNDROBIN, align 4
  %154 = load i32, i32* @default_cluster_mode, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* @default_cluster_mode, align 4
  br label %408

156:                                              ; preds = %148
  %157 = load i8*, i8** @optarg, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @CLUSTER_MODE_BAYES, align 4
  %162 = load i32, i32* @default_cluster_mode, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* @default_cluster_mode, align 4
  br label %407

164:                                              ; preds = %156
  %165 = load i8*, i8** @optarg, align 8
  %166 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @CLUSTER_MODE_ANTISPAM, align 4
  %170 = load i32, i32* @default_cluster_mode, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* @default_cluster_mode, align 4
  br label %406

172:                                              ; preds = %164
  %173 = load i8*, i8** @optarg, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* @CLUSTER_MODE_TEMP, align 4
  %178 = load i32, i32* @default_cluster_mode, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* @default_cluster_mode, align 4
  br label %405

180:                                              ; preds = %172
  %181 = load i8*, i8** @optarg, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* @CLUSTER_MODE_SUPPORT, align 4
  %186 = load i32, i32* @default_cluster_mode, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* @default_cluster_mode, align 4
  br label %404

188:                                              ; preds = %180
  %189 = load i8*, i8** @optarg, align 8
  %190 = call i32 @strcmp(i8* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* @CLUSTER_MODE_PHOTO, align 4
  %194 = load i32, i32* @default_cluster_mode, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* @default_cluster_mode, align 4
  br label %403

196:                                              ; preds = %188
  %197 = load i8*, i8** @optarg, align 8
  %198 = call i32 @strcmp(i8* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @CLUSTER_MODE_DOT, align 4
  %202 = load i32, i32* @default_cluster_mode, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* @default_cluster_mode, align 4
  br label %402

204:                                              ; preds = %196
  %205 = load i8*, i8** @optarg, align 8
  %206 = call i32 @strcmp(i8* %205, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* @default_cluster_mode, align 4
  %210 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* @stderr, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

216:                                              ; preds = %208
  %217 = load i32, i32* @CLUSTER_MODE_SEARCH, align 4
  %218 = load i32, i32* @default_cluster_mode, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* @default_cluster_mode, align 4
  br label %401

220:                                              ; preds = %204
  %221 = load i8*, i8** @optarg, align 8
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %236, label %224

224:                                              ; preds = %220
  %225 = load i32, i32* @default_cluster_mode, align 4
  %226 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* @stderr, align 4
  %231 = call i32 (i32, i8*, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

232:                                              ; preds = %224
  %233 = load i32, i32* @CLUSTER_MODE_TARG, align 4
  %234 = load i32, i32* @default_cluster_mode, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* @default_cluster_mode, align 4
  br label %400

236:                                              ; preds = %220
  %237 = load i8*, i8** @optarg, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %252, label %240

240:                                              ; preds = %236
  %241 = load i32, i32* @default_cluster_mode, align 4
  %242 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load i32, i32* @stderr, align 4
  %247 = call i32 (i32, i8*, ...) @fprintf(i32 %246, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

248:                                              ; preds = %240
  %249 = load i32, i32* @CLUSTER_MODE_NEWS_UG, align 4
  %250 = load i32, i32* @default_cluster_mode, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* @default_cluster_mode, align 4
  br label %399

252:                                              ; preds = %236
  %253 = load i8*, i8** @optarg, align 8
  %254 = call i32 @strcmp(i8* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %252
  %257 = load i32, i32* @default_cluster_mode, align 4
  %258 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load i32, i32* @stderr, align 4
  %263 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

264:                                              ; preds = %256
  %265 = load i32, i32* @CLUSTER_MODE_NEWS_G, align 4
  %266 = load i32, i32* @default_cluster_mode, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* @default_cluster_mode, align 4
  br label %398

268:                                              ; preds = %252
  %269 = load i8*, i8** @optarg, align 8
  %270 = call i32 @strcmp(i8* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* @default_cluster_mode, align 4
  %274 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load i32, i32* @stderr, align 4
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

280:                                              ; preds = %272
  %281 = load i32, i32* @CLUSTER_MODE_NEWS_COMM, align 4
  %282 = load i32, i32* @default_cluster_mode, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* @default_cluster_mode, align 4
  br label %397

284:                                              ; preds = %268
  %285 = load i8*, i8** @optarg, align 8
  %286 = call i32 @strcmp(i8* %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %284
  %289 = load i32, i32* @default_cluster_mode, align 4
  %290 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load i32, i32* @stderr, align 4
  %295 = call i32 (i32, i8*, ...) @fprintf(i32 %294, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

296:                                              ; preds = %288
  %297 = load i32, i32* @CLUSTER_MODE_NEWSR, align 4
  %298 = load i32, i32* @default_cluster_mode, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* @default_cluster_mode, align 4
  br label %396

300:                                              ; preds = %284
  %301 = load i8*, i8** @optarg, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0))
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %300
  %305 = load i32, i32* @default_cluster_mode, align 4
  %306 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load i32, i32* @stderr, align 4
  %311 = call i32 (i32, i8*, ...) @fprintf(i32 %310, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

312:                                              ; preds = %304
  %313 = load i32, i32* @CLUSTER_MODE_STATSX, align 4
  %314 = load i32, i32* @default_cluster_mode, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* @default_cluster_mode, align 4
  br label %395

316:                                              ; preds = %300
  %317 = load i8*, i8** @optarg, align 8
  %318 = call i32 @strcmp(i8* %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %332, label %320

320:                                              ; preds = %316
  %321 = load i32, i32* @default_cluster_mode, align 4
  %322 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load i32, i32* @stderr, align 4
  %327 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

328:                                              ; preds = %320
  %329 = load i32, i32* @CLUSTER_MODE_FRIENDS, align 4
  %330 = load i32, i32* @default_cluster_mode, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* @default_cluster_mode, align 4
  br label %394

332:                                              ; preds = %316
  %333 = load i8*, i8** @optarg, align 8
  %334 = call i32 @strcmp(i8* %333, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %348, label %336

336:                                              ; preds = %332
  %337 = load i32, i32* @default_cluster_mode, align 4
  %338 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load i32, i32* @stderr, align 4
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %342, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

344:                                              ; preds = %336
  %345 = load i32, i32* @CLUSTER_MODE_SEARCHX, align 4
  %346 = load i32, i32* @default_cluster_mode, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* @default_cluster_mode, align 4
  br label %393

348:                                              ; preds = %332
  %349 = load i8*, i8** @optarg, align 8
  %350 = call i32 @strcmp(i8* %349, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = load i32, i32* @CLUSTER_MODE_WATCHCAT, align 4
  %354 = load i32, i32* @default_cluster_mode, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* @default_cluster_mode, align 4
  br label %392

356:                                              ; preds = %348
  %357 = load i8*, i8** @optarg, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %372, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* @default_cluster_mode, align 4
  %362 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i32, i32* @stderr, align 4
  %367 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

368:                                              ; preds = %360
  %369 = load i32, i32* @CLUSTER_MODE_HINTS_MERGE, align 4
  %370 = load i32, i32* @default_cluster_mode, align 4
  %371 = or i32 %370, %369
  store i32 %371, i32* @default_cluster_mode, align 4
  br label %391

372:                                              ; preds = %356
  %373 = load i8*, i8** @optarg, align 8
  %374 = call i32 @strcmp(i8* %373, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %388, label %376

376:                                              ; preds = %372
  %377 = load i32, i32* @default_cluster_mode, align 4
  %378 = load i32, i32* @CLUSTER_MODE_MERGE, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %376
  %382 = load i32, i32* @stderr, align 4
  %383 = call i32 (i32, i8*, ...) @fprintf(i32 %382, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  store i32 2, i32* %3, align 4
  br label %523

384:                                              ; preds = %376
  %385 = load i32, i32* @CLUSTER_MODE_RANDOM_MERGE, align 4
  %386 = load i32, i32* @default_cluster_mode, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* @default_cluster_mode, align 4
  br label %390

388:                                              ; preds = %372
  %389 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %523

390:                                              ; preds = %384
  br label %391

391:                                              ; preds = %390, %368
  br label %392

392:                                              ; preds = %391, %352
  br label %393

393:                                              ; preds = %392, %344
  br label %394

394:                                              ; preds = %393, %328
  br label %395

395:                                              ; preds = %394, %312
  br label %396

396:                                              ; preds = %395, %296
  br label %397

397:                                              ; preds = %396, %280
  br label %398

398:                                              ; preds = %397, %264
  br label %399

399:                                              ; preds = %398, %248
  br label %400

400:                                              ; preds = %399, %232
  br label %401

401:                                              ; preds = %400, %216
  br label %402

402:                                              ; preds = %401, %200
  br label %403

403:                                              ; preds = %402, %192
  br label %404

404:                                              ; preds = %403, %184
  br label %405

405:                                              ; preds = %404, %176
  br label %406

406:                                              ; preds = %405, %168
  br label %407

407:                                              ; preds = %406, %160
  br label %408

408:                                              ; preds = %407, %152
  br label %409

409:                                              ; preds = %408, %144
  br label %410

410:                                              ; preds = %409, %136
  br label %411

411:                                              ; preds = %410, %128
  br label %412

412:                                              ; preds = %411, %120
  br label %413

413:                                              ; preds = %412, %112
  br label %414

414:                                              ; preds = %413, %104
  br label %469

415:                                              ; preds = %19
  %416 = load i8*, i8** @optarg, align 8
  %417 = call i32 @atof(i8* %416)
  store i32 %417, i32* @ping_interval, align 4
  %418 = load i32, i32* @ping_interval, align 4
  %419 = load i32, i32* @MIN_PING_INTERVAL, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %425, label %421

421:                                              ; preds = %415
  %422 = load i32, i32* @ping_interval, align 4
  %423 = load i32, i32* @MAX_PING_INTERVAL, align 4
  %424 = icmp sgt i32 %422, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %421, %415
  %426 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %523

427:                                              ; preds = %421
  br label %469

428:                                              ; preds = %19
  %429 = load i8*, i8** @optarg, align 8
  store i8* %429, i8** %9, align 8
  br label %469

430:                                              ; preds = %19
  %431 = load i32, i32* @daemonize, align 4
  %432 = xor i32 %431, 1
  store i32 %432, i32* @daemonize, align 4
  br label %469

433:                                              ; preds = %19
  store i8 0, i8* %8, align 1
  %434 = load i8*, i8** @optarg, align 8
  %435 = call i32 @sscanf(i8* %434, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i64* %7, i8* %8)
  %436 = icmp sge i32 %435, 1
  %437 = zext i1 %436 to i32
  %438 = call i32 @assert(i32 %437)
  %439 = load i8, i8* %8, align 1
  %440 = sext i8 %439 to i32
  %441 = or i32 %440, 32
  switch i32 %441, label %454 [
    i32 107, label %442
    i32 109, label %445
    i32 103, label %448
    i32 116, label %451
  ]

442:                                              ; preds = %433
  %443 = load i64, i64* %7, align 8
  %444 = shl i64 %443, 10
  store i64 %444, i64* %7, align 8
  br label %460

445:                                              ; preds = %433
  %446 = load i64, i64* %7, align 8
  %447 = shl i64 %446, 20
  store i64 %447, i64* %7, align 8
  br label %460

448:                                              ; preds = %433
  %449 = load i64, i64* %7, align 8
  %450 = shl i64 %449, 30
  store i64 %450, i64* %7, align 8
  br label %460

451:                                              ; preds = %433
  %452 = load i64, i64* %7, align 8
  %453 = shl i64 %452, 40
  store i64 %453, i64* %7, align 8
  br label %460

454:                                              ; preds = %433
  %455 = load i8, i8* %8, align 1
  %456 = sext i8 %455 to i32
  %457 = icmp eq i32 %456, 32
  %458 = zext i1 %457 to i32
  %459 = call i32 @assert(i32 %458)
  br label %460

460:                                              ; preds = %454, %451, %448, %445, %442
  %461 = load i64, i64* %7, align 8
  %462 = icmp sge i64 %461, 1048576
  br i1 %462, label %463, label %468

463:                                              ; preds = %460
  %464 = load i64, i64* %7, align 8
  %465 = icmp sle i64 %464, 107374182400
  br i1 %465, label %466, label %468

466:                                              ; preds = %463
  %467 = load i64, i64* %7, align 8
  store i64 %467, i64* @dynamic_data_buffer_size, align 8
  br label %468

468:                                              ; preds = %466, %463, %460
  br label %469

469:                                              ; preds = %19, %468, %430, %428, %427, %414, %95, %93, %91, %90, %79, %78, %65, %52, %39, %27, %24, %21
  br label %14

470:                                              ; preds = %14
  %471 = load i32, i32* %4, align 4
  %472 = load i32, i32* @optind, align 4
  %473 = add nsw i32 %472, 1
  %474 = icmp ne i32 %471, %473
  br i1 %474, label %475, label %477

475:                                              ; preds = %470
  %476 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  br label %523

477:                                              ; preds = %470
  %478 = load i64, i64* @default_max_connections, align 8
  %479 = load i64, i64* @default_min_connections, align 8
  %480 = icmp slt i64 %478, %479
  br i1 %480, label %481, label %484

481:                                              ; preds = %477
  %482 = call i32 @kprintf(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.29, i64 0, i64 0))
  %483 = load i64, i64* @default_min_connections, align 8
  store i64 %483, i64* @default_max_connections, align 8
  br label %484

484:                                              ; preds = %481, %477
  %485 = call i32 (...) @init_dyn_data()
  %486 = load i64, i64* @maxconn, align 8
  %487 = add nsw i64 %486, 16
  %488 = call i64 @raise_file_rlimit(i64 %487)
  %489 = icmp slt i64 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %484
  %491 = load i32, i32* @stderr, align 4
  %492 = load i64, i64* @maxconn, align 8
  %493 = add nsw i64 %492, 16
  %494 = call i32 (i32, i8*, ...) @fprintf(i32 %491, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.30, i64 0, i64 0), i64 %493)
  %495 = call i32 @exit(i32 1) #3
  unreachable

496:                                              ; preds = %484
  %497 = load i8**, i8*** %5, align 8
  %498 = load i32, i32* @optind, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8*, i8** %497, i64 %499
  %501 = load i8*, i8** %500, align 8
  store i8* %501, i8** @config_filename, align 8
  %502 = call i32 @do_reload_config(i32 0)
  store i32 %502, i32* %6, align 4
  %503 = load i32, i32* %6, align 4
  %504 = icmp slt i32 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %496
  %506 = load i32, i32* @stderr, align 4
  %507 = call i32 (i32, i8*, ...) @fprintf(i32 %506, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %508 = load i32, i32* %6, align 4
  %509 = sub nsw i32 0, %508
  store i32 %509, i32* %3, align 4
  br label %523

510:                                              ; preds = %496
  %511 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  %512 = load i8*, i8** %9, align 8
  %513 = icmp ne i8* %512, null
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = load i8*, i8** %9, align 8
  %516 = call i32 @aes_load_pwd_file(i8* %515)
  br label %520

517:                                              ; preds = %510
  %518 = load i8*, i8** @aes_pwd_file, align 8
  %519 = call i32 @aes_load_pwd_file(i8* %518)
  br label %520

520:                                              ; preds = %517, %514
  %521 = call i32 @time(i32 0)
  store i32 %521, i32* @start_time, align 4
  %522 = call i32 (...) @start_server()
  store i32 0, i32* %3, align 4
  br label %523

523:                                              ; preds = %520, %505, %475, %425, %388, %381, %365, %341, %325, %309, %293, %277, %261, %245, %229, %213, %30
  %524 = load i32, i32* %3, align 4
  ret i32 %524
}

declare dso_local i32 @set_debug_handlers(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @nice(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atof(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @kprintf(i8*) #1

declare dso_local i32 @init_dyn_data(...) #1

declare dso_local i64 @raise_file_rlimit(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @do_reload_config(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @aes_load_pwd_file(i8*) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
