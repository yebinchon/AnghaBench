; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_options.c_parse_long_opt.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_options.c_parse_long_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i64, i64, i32, i32, i32, i64, i64, i64, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"no-global-config\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"log-format\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"time-format\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"date-format\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MAX_CUSTOM_COLORS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"color-scheme\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"html-custom-css\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"html-custom-js\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"html-prefs\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"html-report-title\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"json-pretty-print\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"max-items\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"no-color\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"no-column-names\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"no-csv-summary\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"no-parsing-spinner\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"no-tab-scroll\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"no-html-last-updated\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"fifo-in\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"fifo-out\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"daemonize\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"pid-file\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"Invalid port.\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"real-time-html\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"ssl-cert\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ssl-key\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ws-url\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"invalid-requests\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@MAX_OUTFORMATS = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [11 x i8] c"444-as-404\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"4xx-to-unique-count\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"anonymize-ip\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"accumulated-time\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"all-static-files\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"crawlers-only\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"date-spec\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"hr\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"double-decode\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"enable-panel\00", align 1
@TOTAL_MODULES = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [10 x i8] c"hour-spec\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"ignore-crawlers\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ignore-panel\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"ignore-referer\00", align 1
@MAX_IGNORE_REF = common dso_local global i64 0, align 8
@.str.48 = private unnamed_addr constant [17 x i8] c"no-ip-validation\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"hide-referer\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"ignore-status\00", align 1
@MAX_IGNORE_STATUS = common dso_local global i64 0, align 8
@.str.51 = private unnamed_addr constant [15 x i8] c"ignore-statics\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@IGNORE_LEVEL_REQ = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@IGNORE_LEVEL_PANEL = common dso_local global i32 0, align 4
@.str.54 = private unnamed_addr constant [31 x i8] c"Invalid statics ignore option.\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"num-tests\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"process-and-exit\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"real-os\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"sort-panel\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"static-file\00", align 1
@MAX_EXTENSIONS = common dso_local global i64 0, align 8
@.str.60 = private unnamed_addr constant [16 x i8] c"geoip-city-data\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"geoip-database\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"keep-db-files\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"load-from-disk\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"db-path\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"cache-lcnum\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"cache-ncnum\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"tune-bnum\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"tune-nmemb\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"tune-lmemb\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"xmmap\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"dcf\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@TC_BZ2 = common dso_local global i32 0, align 4
@TC_ZLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @parse_long_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_long_opt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %507

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @set_log_format_str(i8* %19)
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @set_time_format_str(i8* %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @set_date_format_str(i8* %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 70), align 8
  %42 = load i64, i64* @MAX_CUSTOM_COLORS, align 8
  %43 = call i32 @set_array_opt(i8* %40, i32 %41, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), i64 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @atoi(i8* %49)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 69), align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 1), align 8
  br label %57

57:                                               ; preds = %55, %51
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 2), align 8
  br label %63

63:                                               ; preds = %61, %57
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 3), align 8
  br label %69

69:                                               ; preds = %67, %63
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 4), align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 5), align 8
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %103, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @strtol(i8* %85, i8** %5, i32 10)
  store i32 %86, i32* %6, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* @errno, align 8
  %97 = load i64, i64* @ERANGE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %90, %84
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 6), align 4
  br label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 6), align 4
  br label %102

102:                                              ; preds = %100, %99
  br label %103

103:                                              ; preds = %102, %80
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 7), align 8
  br label %108

108:                                              ; preds = %107, %103
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 8), align 4
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i8*, i8** %3, align 8
  %115 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 9), align 8
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @strcmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 10), align 4
  br label %123

123:                                              ; preds = %122, %118
  %124 = load i8*, i8** %3, align 8
  %125 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 11), align 8
  br label %128

128:                                              ; preds = %127, %123
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 12), align 4
  br label %133

133:                                              ; preds = %132, %128
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 13), align 8
  br label %138

138:                                              ; preds = %137, %133
  %139 = load i8*, i8** %3, align 8
  %140 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %4, align 8
  store i8* %143, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 14), align 8
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = load i8*, i8** %4, align 8
  store i8* %149, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 15), align 8
  br label %150

150:                                              ; preds = %148, %144
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = load i8*, i8** %4, align 8
  store i8* %155, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 16), align 8
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %156
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 17), align 8
  br label %161

161:                                              ; preds = %160, %156
  %162 = load i8*, i8** %3, align 8
  %163 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %4, align 8
  store i8* %166, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 18), align 8
  br label %167

167:                                              ; preds = %165, %161
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = load i8*, i8** %4, align 8
  store i8* %172, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 19), align 8
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i8*, i8** %3, align 8
  %175 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %173
  %178 = load i8*, i8** %4, align 8
  %179 = call i32 @strtol(i8* %178, i8** null, i32 10)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %7, align 4
  %184 = icmp sgt i32 %183, 65535
  br i1 %184, label %185, label %187

185:                                              ; preds = %182, %177
  %186 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  br label %189

187:                                              ; preds = %182
  %188 = load i8*, i8** %4, align 8
  store i8* %188, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 20), align 8
  br label %189

189:                                              ; preds = %187, %185
  br label %190

190:                                              ; preds = %189, %173
  %191 = load i8*, i8** %3, align 8
  %192 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 21), align 8
  br label %195

195:                                              ; preds = %194, %190
  %196 = load i8*, i8** %3, align 8
  %197 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %195
  %200 = load i8*, i8** %4, align 8
  store i8* %200, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 22), align 8
  br label %201

201:                                              ; preds = %199, %195
  %202 = load i8*, i8** %3, align 8
  %203 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i8* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %201
  %206 = load i8*, i8** %4, align 8
  store i8* %206, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 23), align 8
  br label %207

207:                                              ; preds = %205, %201
  %208 = load i8*, i8** %3, align 8
  %209 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %4, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 24), align 8
  br label %213

213:                                              ; preds = %211, %207
  %214 = load i8*, i8** %3, align 8
  %215 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213
  %218 = load i8*, i8** %4, align 8
  store i8* %218, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 25), align 8
  %219 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 25), align 8
  %220 = call i32 @invalid_log_open(i8* %219)
  br label %221

221:                                              ; preds = %217, %213
  %222 = load i8*, i8** %3, align 8
  %223 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %221
  %226 = load i8*, i8** %4, align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 68), align 8
  %228 = load i64, i64* @MAX_OUTFORMATS, align 8
  %229 = call i32 @set_array_opt(i8* %226, i32 %227, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 26), i64 %228)
  br label %230

230:                                              ; preds = %225, %221
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 27), align 8
  br label %235

235:                                              ; preds = %234, %230
  %236 = load i8*, i8** %3, align 8
  %237 = call i32 @strcmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i8* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 28), align 4
  br label %240

240:                                              ; preds = %239, %235
  %241 = load i8*, i8** %3, align 8
  %242 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i8* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 29), align 8
  br label %245

245:                                              ; preds = %244, %240
  %246 = load i8*, i8** %3, align 8
  %247 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 30), align 4
  br label %250

250:                                              ; preds = %249, %245
  %251 = load i8*, i8** %3, align 8
  %252 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 31), align 8
  br label %255

255:                                              ; preds = %254, %250
  %256 = load i8*, i8** %3, align 8
  %257 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0), i8* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 32), align 4
  br label %260

260:                                              ; preds = %259, %255
  %261 = load i8*, i8** %3, align 8
  %262 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load i8*, i8** %4, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 33), align 8
  br label %269

269:                                              ; preds = %268, %264, %260
  %270 = load i8*, i8** %3, align 8
  %271 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i8* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %269
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 34), align 4
  br label %274

274:                                              ; preds = %273, %269
  %275 = load i8*, i8** %3, align 8
  %276 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load i8*, i8** %4, align 8
  %280 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 67), align 4
  %281 = load i64, i64* @TOTAL_MODULES, align 8
  %282 = call i32 @set_array_opt(i8* %279, i32 %280, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 35), i64 %281)
  br label %283

283:                                              ; preds = %278, %274
  %284 = load i8*, i8** %3, align 8
  %285 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i8* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %292, label %287

287:                                              ; preds = %283
  %288 = load i8*, i8** %4, align 8
  %289 = call i32 @strcmp(i8* %288, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0))
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 36), align 8
  br label %292

292:                                              ; preds = %291, %287, %283
  %293 = load i8*, i8** %3, align 8
  %294 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i8* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %292
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 37), align 4
  br label %297

297:                                              ; preds = %296, %292
  %298 = load i8*, i8** %3, align 8
  %299 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i8* %298)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %297
  %302 = load i8*, i8** %4, align 8
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 66), align 8
  %304 = load i64, i64* @TOTAL_MODULES, align 8
  %305 = call i32 @set_array_opt(i8* %302, i32 %303, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 38), i64 %304)
  br label %306

306:                                              ; preds = %301, %297
  %307 = load i8*, i8** %3, align 8
  %308 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0), i8* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %306
  %311 = load i8*, i8** %4, align 8
  %312 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 65), align 4
  %313 = load i64, i64* @MAX_IGNORE_REF, align 8
  %314 = call i32 @set_array_opt(i8* %311, i32 %312, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 39), i64 %313)
  br label %315

315:                                              ; preds = %310, %306
  %316 = load i8*, i8** %3, align 8
  %317 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i8* %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %315
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 40), align 8
  br label %320

320:                                              ; preds = %319, %315
  %321 = load i8*, i8** %3, align 8
  %322 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i8* %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %320
  %325 = load i8*, i8** %4, align 8
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 64), align 8
  %327 = load i64, i64* @MAX_IGNORE_REF, align 8
  %328 = call i32 @set_array_opt(i8* %325, i32 %326, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 41), i64 %327)
  br label %329

329:                                              ; preds = %324, %320
  %330 = load i8*, i8** %3, align 8
  %331 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i64 0, i64 0), i8* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %329
  %334 = load i8*, i8** %4, align 8
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 63), align 4
  %336 = load i64, i64* @MAX_IGNORE_STATUS, align 8
  %337 = call i32 @set_array_opt(i8* %334, i32 %335, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 42), i64 %336)
  br label %338

338:                                              ; preds = %333, %329
  %339 = load i8*, i8** %3, align 8
  %340 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i64 0, i64 0), i8* %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %358, label %342

342:                                              ; preds = %338
  %343 = load i8*, i8** %4, align 8
  %344 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i8* %343)
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342
  %347 = load i32, i32* @IGNORE_LEVEL_REQ, align 4
  store i32 %347, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 62), align 8
  br label %357

348:                                              ; preds = %342
  %349 = load i8*, i8** %4, align 8
  %350 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i64 0, i64 0), i8* %349)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %354, label %352

352:                                              ; preds = %348
  %353 = load i32, i32* @IGNORE_LEVEL_PANEL, align 4
  store i32 %353, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 62), align 8
  br label %356

354:                                              ; preds = %348
  %355 = call i32 @LOG_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.54, i64 0, i64 0))
  br label %356

356:                                              ; preds = %354, %352
  br label %357

357:                                              ; preds = %356, %346
  br label %358

358:                                              ; preds = %357, %338
  %359 = load i8*, i8** %3, align 8
  %360 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0), i8* %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %386, label %362

362:                                              ; preds = %358
  %363 = load i8*, i8** %4, align 8
  %364 = call i32 @strtol(i8* %363, i8** %8, i32 10)
  store i32 %364, i32* %9, align 4
  %365 = load i8*, i8** %4, align 8
  %366 = load i8*, i8** %8, align 8
  %367 = icmp eq i8* %365, %366
  br i1 %367, label %377, label %368

368:                                              ; preds = %362
  %369 = load i8*, i8** %8, align 8
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = load i64, i64* @errno, align 8
  %375 = load i64, i64* @ERANGE, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %378

377:                                              ; preds = %373, %368, %362
  br label %507

378:                                              ; preds = %373
  %379 = load i32, i32* %9, align 4
  %380 = icmp sge i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = load i32, i32* %9, align 4
  br label %384

383:                                              ; preds = %378
  br label %384

384:                                              ; preds = %383, %381
  %385 = phi i32 [ %382, %381 ], [ 0, %383 ]
  store i32 %385, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 43), align 8
  br label %386

386:                                              ; preds = %384, %358
  %387 = load i8*, i8** %3, align 8
  %388 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0), i8* %387)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 44), align 4
  br label %391

391:                                              ; preds = %390, %386
  %392 = load i8*, i8** %3, align 8
  %393 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i64 0, i64 0), i8* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %391
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 45), align 8
  br label %396

396:                                              ; preds = %395, %391
  %397 = load i8*, i8** %3, align 8
  %398 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0), i8* %397)
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %405, label %400

400:                                              ; preds = %396
  %401 = load i8*, i8** %4, align 8
  %402 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 61), align 4
  %403 = load i64, i64* @TOTAL_MODULES, align 8
  %404 = call i32 @set_array_opt(i8* %401, i32 %402, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 46), i64 %403)
  br label %405

405:                                              ; preds = %400, %396
  %406 = load i8*, i8** %3, align 8
  %407 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i64 0, i64 0), i8* %406)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %426, label %409

409:                                              ; preds = %405
  %410 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 47), align 8
  %411 = load i64, i64* @MAX_EXTENSIONS, align 8
  %412 = icmp slt i64 %410, %411
  br i1 %412, label %413, label %426

413:                                              ; preds = %409
  %414 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 48), align 8
  %415 = load i8*, i8** %4, align 8
  %416 = call i64 @strlen(i8* %415)
  %417 = icmp slt i64 %414, %416
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load i8*, i8** %4, align 8
  %420 = call i64 @strlen(i8* %419)
  store i64 %420, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 48), align 8
  br label %421

421:                                              ; preds = %418, %413
  %422 = load i8*, i8** %4, align 8
  %423 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 60), align 8
  %424 = load i64, i64* @MAX_EXTENSIONS, align 8
  %425 = call i32 @set_array_opt(i8* %422, i32 %423, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 47), i64 %424)
  br label %426

426:                                              ; preds = %421, %409, %405
  %427 = load i8*, i8** %3, align 8
  %428 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.60, i64 0, i64 0), i8* %427)
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %426
  %431 = load i8*, i8** %3, align 8
  %432 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i8* %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %430, %426
  %435 = load i8*, i8** %4, align 8
  store i8* %435, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 49), align 8
  br label %436

436:                                              ; preds = %434, %430
  %437 = load i8*, i8** %3, align 8
  %438 = call i32 @strcmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i8* %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %436
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 50), align 8
  br label %441

441:                                              ; preds = %440, %436
  %442 = load i8*, i8** %3, align 8
  %443 = call i32 @strcmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i8* %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %446, label %445

445:                                              ; preds = %441
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 51), align 4
  br label %446

446:                                              ; preds = %445, %441
  %447 = load i8*, i8** %3, align 8
  %448 = call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i64 0, i64 0), i8* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %452, label %450

450:                                              ; preds = %446
  %451 = load i8*, i8** %4, align 8
  store i8* %451, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 52), align 8
  br label %452

452:                                              ; preds = %450, %446
  %453 = load i8*, i8** %3, align 8
  %454 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i64 0, i64 0), i8* %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %452
  %457 = load i8*, i8** %4, align 8
  %458 = call i8* @atoi(i8* %457)
  store i8* %458, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 59), align 8
  br label %459

459:                                              ; preds = %456, %452
  %460 = load i8*, i8** %3, align 8
  %461 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i64 0, i64 0), i8* %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %459
  %464 = load i8*, i8** %4, align 8
  %465 = call i8* @atoi(i8* %464)
  store i8* %465, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 58), align 8
  br label %466

466:                                              ; preds = %463, %459
  %467 = load i8*, i8** %3, align 8
  %468 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0), i8* %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %466
  %471 = load i8*, i8** %4, align 8
  %472 = call i8* @atoi(i8* %471)
  store i8* %472, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 57), align 8
  br label %473

473:                                              ; preds = %470, %466
  %474 = load i8*, i8** %3, align 8
  %475 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i64 0, i64 0), i8* %474)
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %473
  %478 = load i8*, i8** %4, align 8
  %479 = call i8* @atoi(i8* %478)
  store i8* %479, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 56), align 8
  br label %480

480:                                              ; preds = %477, %473
  %481 = load i8*, i8** %3, align 8
  %482 = call i32 @strcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i64 0, i64 0), i8* %481)
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %480
  %485 = load i8*, i8** %4, align 8
  %486 = call i8* @atoi(i8* %485)
  store i8* %486, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 55), align 8
  br label %487

487:                                              ; preds = %484, %480
  %488 = load i8*, i8** %3, align 8
  %489 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i64 0, i64 0), i8* %488)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %487
  %492 = load i8*, i8** %4, align 8
  %493 = call i8* @atoi(i8* %492)
  store i8* %493, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 54), align 8
  br label %494

494:                                              ; preds = %491, %487
  %495 = load i8*, i8** %3, align 8
  %496 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8* %495)
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %499, label %498

498:                                              ; preds = %494
  br label %499

499:                                              ; preds = %498, %494
  %500 = load i8*, i8** %3, align 8
  %501 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i64 0, i64 0), i8* %500)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %507, label %503

503:                                              ; preds = %499
  %504 = call i32 (...) @display_default_config_file()
  %505 = load i32, i32* @EXIT_SUCCESS, align 4
  %506 = call i32 @exit(i32 %505) #3
  unreachable

507:                                              ; preds = %13, %377, %499
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_log_format_str(i8*) #1

declare dso_local i32 @set_time_format_str(i8*) #1

declare dso_local i32 @set_date_format_str(i8*) #1

declare dso_local i32 @set_array_opt(i8*, i32, i64*, i64) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @LOG_DEBUG(i8*) #1

declare dso_local i32 @invalid_log_open(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @display_default_config_file(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
