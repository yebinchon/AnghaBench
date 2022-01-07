; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_on_config_spawn.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_fastcgi.c_on_config_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i8* }
%struct.fastcgi_configurator_t = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i8*, i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.passwd = type { i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i8* }

@__const.on_config_spawn.dirname = private unnamed_addr constant [25 x i8] c"/tmp/h2o.fcgisock.XXXXXX\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"command:s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"user:s\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"argument must be scalar or mapping\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"getpwnam_r(3) failed to obtain uid of user:%s\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"share/h2o/kill-on-close\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"--rm\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"share/h2o/setuidgid\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"/bin/sh\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"/dry-run.nonexistent\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"mkdtemp(3) failed to create temporary directory:%s:%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [65 x i8] c"chown(2) failed to change ownership of temporary directory:%s:%s\00", align 1
@spawnproc_on_dispose = common dso_local global i32 0, align 4
@H2O_URL_SCHEME_FASTCGI = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_28__*)* @on_config_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_config_spawn(%struct.TYPE_32__* %0, %struct.TYPE_31__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.fastcgi_configurator_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [25 x i8], align 16
  %14 = alloca [10 x i8*], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.sockaddr_un, align 4
  %17 = alloca %struct.TYPE_30__, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.passwd, align 4
  %20 = alloca %struct.passwd*, align 8
  %21 = alloca [65536 x i8], align 16
  %22 = alloca %struct.TYPE_28__**, align 8
  %23 = alloca %struct.TYPE_28__**, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.fastcgi_configurator_t*
  store %struct.fastcgi_configurator_t* %30, %struct.fastcgi_configurator_t** %8, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %36 = bitcast [25 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %36, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.on_config_spawn.dirname, i32 0, i32 0), i64 25, i1 false)
  store i32 -1, i32* %18, align 4
  %37 = call i32 @memset(%struct.sockaddr_un* %16, i32 0, i32 8)
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %67 [
    i32 128, label %41
    i32 129, label %46
  ]

41:                                               ; preds = %3
  %42 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %10, align 8
  br label %71

46:                                               ; preds = %3
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %49 = call i32 @h2o_configurator_parse_mapping(%struct.TYPE_32__* %47, %struct.TYPE_28__* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__*** %22, %struct.TYPE_28__*** %23)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 -1, i32* %4, align 4
  br label %242

52:                                               ; preds = %46
  %53 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %22, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %10, align 8
  %58 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %23, align 8
  %59 = icmp ne %struct.TYPE_28__** %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %23, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  br label %66

66:                                               ; preds = %60, %52
  br label %71

67:                                               ; preds = %3
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = call i32 (%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_32__* %68, %struct.TYPE_28__* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %242

71:                                               ; preds = %66, %41
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %71
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds [65536 x i8], [65536 x i8]* %21, i64 0, i64 0
  %85 = call i64 @getpwnam_r(i8* %83, %struct.passwd* %19, i8* %84, i32 65536, %struct.passwd** %20)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load %struct.passwd*, %struct.passwd** %20, align 8
  %89 = icmp eq %struct.passwd* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87, %78
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_32__* %91, %struct.TYPE_28__* %92, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  br label %228

99:                                               ; preds = %87
  br label %101

100:                                              ; preds = %71
  store %struct.passwd* null, %struct.passwd** %20, align 8
  br label %101

101:                                              ; preds = %100, %99
  store i64 0, i64* %24, align 8
  %102 = call i8* @h2o_configurator_get_cmd_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i8* %102, i8** %11, align 8
  %103 = load i64, i64* %24, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %24, align 8
  %105 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %103
  store i8* %102, i8** %105, align 8
  %106 = load i64, i64* %24, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %24, align 8
  %108 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %110 = load i64, i64* %24, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %24, align 8
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %110
  store i8* %109, i8** %112, align 8
  %113 = load i64, i64* %24, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %24, align 8
  %115 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %113
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %115, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %101
  %119 = call i8* @h2o_configurator_get_cmd_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i8* %119, i8** %12, align 8
  %120 = load i64, i64* %24, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %24, align 8
  %122 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %120
  store i8* %119, i8** %122, align 8
  %123 = load i8*, i8** %9, align 8
  %124 = load i64, i64* %24, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %24, align 8
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %124
  store i8* %123, i8** %126, align 8
  br label %127

127:                                              ; preds = %118, %101
  %128 = load i64, i64* %24, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %24, align 8
  %130 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %128
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %130, align 8
  %131 = load i64, i64* %24, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %24, align 8
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %131
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %133, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %24, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %24, align 8
  %137 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %135
  store i8* %134, i8** %137, align 8
  %138 = load i64, i64* %24, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %24, align 8
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 %138
  store i8* null, i8** %140, align 8
  %141 = load i64, i64* %24, align 8
  %142 = icmp ule i64 %141, 10
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %127
  %150 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %150, align 16
  store i32 -1, i32* %15, align 4
  %151 = load i32, i32* @AF_UNIX, align 4
  %152 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %16, i32 0, i32 1
  store i32 %151, i32* %152, align 4
  %153 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %16, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @strcpy(i32 %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %198

156:                                              ; preds = %127
  %157 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %158 = call i32* @mkdtemp(i8* %157)
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %163 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 (%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_32__* %161, %struct.TYPE_28__* %162, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i8* %163, i32 %165)
  %167 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %167, align 16
  br label %228

168:                                              ; preds = %156
  %169 = load %struct.passwd*, %struct.passwd** %20, align 8
  %170 = icmp ne %struct.passwd* %169, null
  br i1 %170, label %171, label %188

171:                                              ; preds = %168
  %172 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %173 = load %struct.passwd*, %struct.passwd** %20, align 8
  %174 = getelementptr inbounds %struct.passwd, %struct.passwd* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.passwd*, %struct.passwd** %20, align 8
  %177 = getelementptr inbounds %struct.passwd, %struct.passwd* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @chown(i8* %172, i32 %175, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %171
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %184 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %185 = load i32, i32* @errno, align 4
  %186 = call i32 @strerror(i32 %185)
  %187 = call i32 (%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, ...) @h2o_configurator_errprintf(%struct.TYPE_32__* %182, %struct.TYPE_28__* %183, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i8* %184, i32 %186)
  br label %228

188:                                              ; preds = %171, %168
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %191 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %192 = getelementptr inbounds [10 x i8*], [10 x i8*]* %14, i64 0, i64 0
  %193 = load %struct.passwd*, %struct.passwd** %20, align 8
  %194 = call i32 @create_spawnproc(%struct.TYPE_32__* %189, %struct.TYPE_28__* %190, i8* %191, i8** %192, %struct.sockaddr_un* %16, %struct.passwd* %193)
  store i32 %194, i32* %15, align 4
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %228

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197, %149
  %199 = load %struct.fastcgi_configurator_t*, %struct.fastcgi_configurator_t** %8, align 8
  %200 = getelementptr inbounds %struct.fastcgi_configurator_t, %struct.fastcgi_configurator_t* %199, i32 0, i32 0
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %200, align 8
  %202 = bitcast %struct.TYPE_30__* %17 to i8*
  %203 = bitcast %struct.TYPE_30__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 16, i1 false)
  %204 = load i32, i32* @spawnproc_on_dispose, align 4
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %15, align 4
  %208 = inttoptr i32 %207 to i8*
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %16, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %16, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @strlen(i32 %214)
  %216 = call i32 (i32, ...) @h2o_iovec_init(i32 %212, i32 %215)
  %217 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %218 = call i32 (i32, ...) @h2o_iovec_init(i32 %217)
  %219 = call i32 @h2o_url_init_with_sun_path(%struct.TYPE_29__* %25, i32* null, i32* @H2O_URL_SCHEME_FASTCGI, i32 %216, i32 %218)
  %220 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @h2o_fastcgi_register(i32 %222, %struct.TYPE_29__* %25, %struct.TYPE_30__* %17)
  %224 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @free(i8* %226)
  store i32 0, i32* %18, align 4
  br label %228

228:                                              ; preds = %198, %196, %181, %160, %90
  %229 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %230 = load i8, i8* %229, align 16
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = getelementptr inbounds [25 x i8], [25 x i8]* %13, i64 0, i64 0
  %235 = call i32 @unlink(i8* %234)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i8*, i8** %11, align 8
  %238 = call i32 @free(i8* %237)
  %239 = load i8*, i8** %12, align 8
  %240 = call i32 @free(i8* %239)
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %236, %67, %51
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #2

declare dso_local i32 @h2o_configurator_parse_mapping(%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, i8*, %struct.TYPE_28__***, %struct.TYPE_28__***) #2

declare dso_local i32 @h2o_configurator_errprintf(%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, ...) #2

declare dso_local i64 @getpwnam_r(i8*, %struct.passwd*, i8*, i32, %struct.passwd**) #2

declare dso_local i8* @h2o_configurator_get_cmd_path(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32* @mkdtemp(i8*) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @chown(i8*, i32, i32) #2

declare dso_local i32 @create_spawnproc(%struct.TYPE_32__*, %struct.TYPE_28__*, i8*, i8**, %struct.sockaddr_un*, %struct.passwd*) #2

declare dso_local i32 @h2o_url_init_with_sun_path(%struct.TYPE_29__*, i32*, i32*, i32, i32) #2

declare dso_local i32 @h2o_iovec_init(i32, ...) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

declare dso_local i32 @h2o_fastcgi_register(i32, %struct.TYPE_29__*, %struct.TYPE_30__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
