; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy_main.c_iwdpm_configure.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_ios_webkit_debug_proxy_main.c_iwdpm_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8, i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@iwdpm_configure.longopts = internal global [9 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 117 to i32*) }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 99 to i32*) }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 102 to i32*) }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 0, i8 0, i32* inttoptr (i64 70 to i32*) }, %struct.option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 0, i32* inttoptr (i64 115 to i32*) }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 0, i8 0, i32* inttoptr (i64 100 to i32*) }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i8 0, i32* inttoptr (i64 104 to i32*) }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 0, i32* inttoptr (i64 86 to i32*) }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"udid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no-frontend\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"simulator-webinspector\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"null:9221,:9222-9322\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"http://chrome-devtools-frontend.appspot.com/static/27.0.1453.93/devtools.html\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"localhost:27753\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"hVu:c:f:Fs:d\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"%s\0ABuilt with libimobiledevice v%s, libplist v%s\0A\00", align 1
@PACKAGE_STRING = common dso_local global i8* null, align 8
@LIBIMOBILEDEVICE_VERSION = common dso_local global i8* null, align 8
@LIBPLIST_VERSION = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [40 x i8] c"^[a-fA-F0-9-]{25,}(:[0-9]+(-[0-9]+)?)?$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c":9222\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [2517 x i8] c"Usage: %s [OPTIONS]\0AiOS WebKit Remote Debugging Protocol Proxy v%s.\0A\0ABy default, the proxy will list all attached iOS devices on:\0A  http://localhost:9221\0Aand assign each device an incremented port number, e.g.:\0A  http://localhost:9222\0Awhich lists the device's pages and provides inspector access.\0A\0AYour attached iOS device(s) must have the inspector enabled via:\0A  Settings > Safari > Advanced > Web Inspector = ON\0Aand have one or more open browser pages.\0A\0ATo view the DevTools UI, either use the above links (which use the \22frontend\22\0AURL noted below) or use Chrome's built-in inspector, e.g.:\0A  chrome-devtools://devtools/bundled/inspector.html?ws=localhost:9222/devtools/page/1\0A\0AOPTIONS:\0A\0A  -u UDID[:minPort-[maxPort]]\09Target a specific device by its digital ID.\0A        minPort defaults to 9222.  maxPort defaults to minPort.\0A        This is shorthand for the following \22-c\22 option.\0A\0A  -c, --config CSV\09UDID-to-port(s) configuration.\0A        Defaults to:\0A          %s\0A        which lists devices (\22null:\22) on port 9221 and assigns\0A        all other devices (\22:\22) to the next unused port in the\0A        9222-9322 range, in the (somewhat random) order that the\0A        devices are detected.\0A        The value can be the path to a file in the above format.\0A\0A  -f, --frontend URL\09DevTools frontend UI path or URL.\0A        Defaults to:\0A          %s\0A        Examples:\0A          * Use Chrome's built-in inspector:\0A              chrome-devtools://devtools/bundled/inspector.html\0A          * Use a local WebKit checkout:\0A              /usr/local/WebCore/inspector/front-end/inspector.html\0A          * Use an online copy of the inspector pages:\0A              http://chrome-devtools-frontend.appspot.com/static/33.0.1722.0/devtools.html\0A            where other online versions include:\0A              18.0.1025.74\0A              25.0.1364.169\0A              28.0.1501.0\0A              30.0.1599.92\0A              31.0.1651.0\0A              32.0.1689.3\0A\0A  -F, --no-frontend\09Disable the DevTools frontend.\0A\0A  -s, --simulator-webinspector\09Simulator web inspector socket\0A        address. Provided value value needs to be in format\0A        HOSTNAME:PORT or UNIX:PATH\0A        Defaults to:\0A          %s\0A        Examples:\0A          * TCP socket:\0A            192.168.0.20:27753\0A          * Unix domain socket:\0A            unix:/private/tmp/com.apple.launchd.2j5k1TMh6i/com.apple.webinspectord_sim.socket\0A\0A  -d, --debug\09\09Enable debug output.\0A  -h, --help\09\09Print this usage information.\0A  -V, --version\09\09Print version information and exit.\0A\0A\00", align 1
@PACKAGE_VERSION = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwdpm_configure(%struct.TYPE_16__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call %struct.TYPE_14__* @strdup(i8* %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %21, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.TYPE_14__* @strdup(i8* %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call %struct.TYPE_14__* @strdup(i8* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 2
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %29, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %148, %3
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %149

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i8**, i8*** %6, align 8
  %37 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([9 x %struct.option], [9 x %struct.option]* @iwdpm_configure.longopts, i64 0, i64 0), i32* null)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %149

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %147 [
    i32 104, label %43
    i32 86, label %44
    i32 117, label %49
    i32 99, label %111
    i32 115, label %120
    i32 102, label %129
    i32 70, label %129
    i32 100, label %144
  ]

43:                                               ; preds = %41
  store i32 -1, i32* %10, align 4
  br label %148

44:                                               ; preds = %41
  %45 = load i8*, i8** @PACKAGE_STRING, align 8
  %46 = load i8*, i8** @LIBIMOBILEDEVICE_VERSION, align 8
  %47 = load i8*, i8** @LIBPLIST_VERSION, align 8
  %48 = call i32 (i8*, i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0), i8* %45, i8* %46, i8* %47)
  store i32 -2, i32* %10, align 4
  br label %148

49:                                               ; preds = %41
  %50 = call %struct.TYPE_15__* @malloc(i32 4)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %12, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %52 = load i32, i32* @REG_EXTENDED, align 4
  %53 = call i32 @regcomp(%struct.TYPE_15__* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call %struct.TYPE_14__* @calloc(i64 %59, i32 4)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %14, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %62 = load i8*, i8** @optarg, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %65 = call i32 @regexec(%struct.TYPE_15__* %61, i8* %62, i64 %63, %struct.TYPE_14__* %64, i32 0)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %49
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i64 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 0
  br label %77

77:                                               ; preds = %71, %49
  %78 = phi i1 [ false, %49 ], [ %76, %71 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %16, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %81 = call i32 @free(%struct.TYPE_14__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = call i32 @regfree(%struct.TYPE_15__* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = call i32 @free(%struct.TYPE_14__* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %89, align 8
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %77
  store i32 2, i32* %10, align 4
  br label %110

93:                                               ; preds = %77
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @asprintf(%struct.TYPE_14__** %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 2, i32* %10, align 4
  br label %103

103:                                              ; preds = %102, %96
  br label %109

104:                                              ; preds = %93
  %105 = load i8*, i8** @optarg, align 8
  %106 = call %struct.TYPE_14__* @strdup(i8* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %108, align 8
  br label %109

109:                                              ; preds = %104, %103
  br label %110

110:                                              ; preds = %109, %92
  br label %148

111:                                              ; preds = %41
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_14__* %114)
  %116 = load i8*, i8** @optarg, align 8
  %117 = call %struct.TYPE_14__* @strdup(i8* %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %119, align 8
  br label %148

120:                                              ; preds = %41
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = call i32 @free(%struct.TYPE_14__* %123)
  %125 = load i8*, i8** @optarg, align 8
  %126 = call %struct.TYPE_14__* @strdup(i8* %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  store %struct.TYPE_14__* %126, %struct.TYPE_14__** %128, align 8
  br label %148

129:                                              ; preds = %41, %41
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = call i32 @free(%struct.TYPE_14__* %132)
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %134, 102
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i8*, i8** @optarg, align 8
  %138 = call %struct.TYPE_14__* @strdup(i8* %137)
  br label %140

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %136
  %141 = phi %struct.TYPE_14__* [ %138, %136 ], [ null, %139 ]
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %143, align 8
  br label %148

144:                                              ; preds = %41
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  br label %148

147:                                              ; preds = %41
  store i32 2, i32* %10, align 4
  br label %148

148:                                              ; preds = %147, %144, %140, %120, %111, %110, %44, %43
  br label %30

149:                                              ; preds = %40, %30
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @optind, align 4
  %155 = sub nsw i32 %153, %154
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 2, i32* %10, align 4
  br label %158

158:                                              ; preds = %157, %152, %149
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %185

161:                                              ; preds = %158
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, -2
  br i1 %163, label %164, label %185

164:                                              ; preds = %161
  %165 = load i8**, i8*** %6, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @strrchr(i8* %167, i8 signext 47)
  store i8* %168, i8** %17, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %164
  %172 = load i8*, i8** %17, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  br label %178

174:                                              ; preds = %164
  %175 = load i8**, i8*** %6, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  br label %178

178:                                              ; preds = %174, %171
  %179 = phi i8* [ %173, %171 ], [ %177, %174 ]
  %180 = load i8*, i8** @PACKAGE_VERSION, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load i8*, i8** %8, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 (i8*, i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([2517 x i8], [2517 x i8]* @.str.16, i64 0, i64 0), i8* %179, i8* %180, i8* %181, i8* %182, i8* %183)
  br label %185

185:                                              ; preds = %178, %161, %158
  %186 = load i32, i32* %10, align 4
  ret i32 %186
}

declare dso_local %struct.TYPE_14__* @strdup(i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local i32 @regcomp(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @calloc(i64, i32) #1

declare dso_local i32 @regexec(%struct.TYPE_15__*, i8*, i64, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @regfree(%struct.TYPE_15__*) #1

declare dso_local i32 @asprintf(%struct.TYPE_14__**, i8*, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
