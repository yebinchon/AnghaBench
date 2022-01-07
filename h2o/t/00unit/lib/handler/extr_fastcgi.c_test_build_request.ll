; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_test_build_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_test_build_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__** }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32, i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i8*, i32, i32, %struct.TYPE_16__*, i32, i32, i8*, i8*, %struct.TYPE_19__, i8*, i32*, i8* }
%struct.TYPE_19__ = type { i8*, i8*, i32*, i8* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }

@ctx = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@__const.test_build_request.config = private unnamed_addr constant %struct.TYPE_24__ { i32 5000, i8* null, i32 0 }, align 8
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@H2O_URL_SCHEME_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@H2O_TOKEN_COOKIE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"foo=bar\00", align 1
@H2O_TOKEN_USER_AGENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"Mozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\01\01\124\00\08\00\00\00\01\00\00\00\00\00\00\00", align 1
@.str.6 = private unnamed_addr constant [348 x i8] c"\0B\00SCRIPT_NAME\09\01PATH_INFO/\0C\00QUERY_STRING\0B\09REMOTE_ADDR127.0.0.1\0B\05REMOTE_PORT55555\0E\03REQUEST_METHODGET\09\09HTTP_HOSTlocalhost\0B\01REQUEST_URI/\0B\09SERVER_ADDR127.0.0.1\0B\02SERVER_PORT80\0B\07SERVER_NAMEdefault\0F\08SERVER_PROTOCOLHTTP/1.1\0F\10SERVER_SOFTWAREh2o/1.2.1-alpha1\0F?HTTP_USER_AGENTMozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9\0B\07HTTP_COOKIEfoo=bar\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\01\05\124\00\00\00\00\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"/var/www/htdocs\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"hoge=fuga\00", align 1
@.str.10 = private unnamed_addr constant [127 x i8] c"The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.\00", align 1
@.str.11 = private unnamed_addr constant [440 x i8] c"\0E\03CONTENT_LENGTH126\0B\00SCRIPT_NAME\09\01PATH_INFO/\0D\0FDOCUMENT_ROOT/var/www/htdocs\0F\10PATH_TRANSLATED/var/www/htdocs/\0C\00QUERY_STRING\0B\09REMOTE_ADDR127.0.0.1\0B\05REMOTE_PORT55555\0E\03REQUEST_METHODGET\09\09HTTP_HOSTlocalhost\0B\01REQUEST_URI/\0B\09SERVER_ADDR127.0.0.1\0B\02SERVER_PORT80\0B\07SERVER_NAMEdefault\0F\08SERVER_PROTOCOLHTTP/1.1\0F\10SERVER_SOFTWAREh2o/1.2.1-alpha1\0F?HTTP_USER_AGENTMozilla/5.0 (X11; Linux) KHTML/4.9.1 (like Gecko) Konqueror/4.9\0B\11HTTP_COOKIEfoo=bar;hoge=fuga\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\01\05\124\00@\00\00\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"The above copyright notice and this permission notice shall be i\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\01\05\124\00>\00\00\00", align 1
@.str.15 = private unnamed_addr constant [63 x i8] c"ncluded in all copies or substantial portions of the Software.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_build_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_build_request() #0 {
  %1 = alloca %struct.TYPE_23__*, align 8
  %2 = alloca %struct.TYPE_24__, align 8
  %3 = alloca %struct.TYPE_22__, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctx, i32 0, i32 0), align 8
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %6, align 8
  %8 = call %struct.TYPE_23__* @h2o_loopback_create(%struct.TYPE_25__* @ctx, %struct.TYPE_16__** %7)
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %1, align 8
  %9 = bitcast %struct.TYPE_24__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_24__* @__const.test_build_request.config to i8*), i64 24, i1 false)
  %10 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call i8* @h2o_iovec_init(i32 %10)
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 12
  store i8* %11, i8** %14, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  store i8* %11, i8** %18, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 11
  store i32* @H2O_URL_SCHEME_HTTP, i32** %21, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  store i32* @H2O_URL_SCHEME_HTTP, i32** %25, align 8
  %26 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i8* @h2o_iovec_init(i32 %26)
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 10
  store i8* %27, i8** %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  store i8* %27, i8** %34, align 8
  %35 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i8* @h2o_iovec_init(i32 %35)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 7
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 9
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i8* %36, i8** %43, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 7
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 8
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @SIZE_MAX, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 6
  store i32 %51, i32* %54, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  store i32 257, i32* %57, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ctx, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 4
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %64, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 5
  store i32 %71, i32* %74, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 2
  %81 = load i32, i32* @H2O_TOKEN_COOKIE, align 4
  %82 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %83 = call i32 @h2o_add_header(i32* %77, i32* %80, i32 %81, i32* null, i32 %82)
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  %90 = load i32, i32* @H2O_TOKEN_USER_AGENT, align 4
  %91 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %92 = call i32 @h2o_add_header(i32* %86, i32* %89, i32 %90, i32* null, i32 %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = call i32 @build_request(%struct.TYPE_18__* %94, %struct.TYPE_22__* %3, i32 4660, i32 65535, %struct.TYPE_24__* %2)
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i64 0
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %107 = call i32 @h2o_memis(i32 %100, i32 %105, i32 %106)
  %108 = call i32 @ok(i32 %107)
  store i64 1, i64* %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([348 x i8], [348 x i8]* @.str.6, i64 0, i64 0))
  %112 = call i32 @check_params(%struct.TYPE_17__* %110, i64* %4, i32 4660, i32 %111)
  %113 = call i32 @ok(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = load i64, i64* %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %127 = call i32 @h2o_memis(i32 %119, i32 %125, i32 %126)
  %128 = call i32 @ok(i32 %127)
  %129 = load i64, i64* %4, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %4, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %131, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %138 = call i8* @h2o_iovec_init(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %2, i32 0, i32 1
  store i8* %138, i8** %139, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load i32, i32* @H2O_TOKEN_COOKIE, align 4
  %147 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %148 = call i32 @h2o_add_header(i32* %142, i32* %145, i32 %146, i32* null, i32 %147)
  %149 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.10, i64 0, i64 0))
  %150 = call i8* @h2o_iovec_init(i32 %149)
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  store i8* %150, i8** %153, align 8
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 0
  %156 = call i32 @build_request(%struct.TYPE_18__* %155, %struct.TYPE_22__* %3, i32 4660, i32 64, %struct.TYPE_24__* %2)
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %168 = call i32 @h2o_memis(i32 %161, i32 %166, i32 %167)
  %169 = call i32 @ok(i32 %168)
  store i64 1, i64* %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([440 x i8], [440 x i8]* @.str.11, i64 0, i64 0))
  %173 = call i32 @check_params(%struct.TYPE_17__* %171, i64* %4, i32 4660, i32 %172)
  %174 = call i32 @ok(i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %175, align 8
  %177 = load i64, i64* %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = load i64, i64* %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %188 = call i32 @h2o_memis(i32 %180, i32 %186, i32 %187)
  %189 = call i32 @ok(i32 %188)
  %190 = load i64, i64* %4, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = load i64, i64* %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = load i64, i64* %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  %205 = call i32 @h2o_memis(i32 %197, i32 %203, i32 %204)
  %206 = call i32 @ok(i32 %205)
  %207 = load i64, i64* %4, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = load i64, i64* %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %215, align 8
  %217 = load i64, i64* %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %222 = call i32 @h2o_memis(i32 %214, i32 %220, i32 %221)
  %223 = call i32 @ok(i32 %222)
  %224 = load i64, i64* %4, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = load i64, i64* %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %232, align 8
  %234 = load i64, i64* %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.15, i64 0, i64 0))
  %239 = call i32 @h2o_memis(i32 %231, i32 %237, i32 %238)
  %240 = call i32 @ok(i32 %239)
  %241 = load i64, i64* %4, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = load i64, i64* %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 1
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = load i64, i64* %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %256 = call i32 @h2o_memis(i32 %248, i32 %254, i32 %255)
  %257 = call i32 @ok(i32 %256)
  %258 = load i64, i64* %4, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %4, align 8
  %260 = load i64, i64* %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %3, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %260, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @ok(i32 %264)
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1, align 8
  %267 = call i32 @h2o_loopback_destroy(%struct.TYPE_23__* %266)
  ret void
}

declare dso_local %struct.TYPE_23__* @h2o_loopback_create(%struct.TYPE_25__*, %struct.TYPE_16__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @build_request(%struct.TYPE_18__*, %struct.TYPE_22__*, i32, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @check_params(%struct.TYPE_17__*, i64*, i32, i32) #1

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
