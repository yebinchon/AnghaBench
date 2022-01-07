; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_if_modified_since.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_file.c_test_if_modified_since.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i8* }
%struct.TYPE_21__ = type { i64 }

@H2O_TIMESTR_RFC1123_LEN = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@H2O_TOKEN_LAST_MODIFIED = common dso_local global i32 0, align 4
@H2O_TOKEN_IF_MODIFIED_SINCE = common dso_local global i32 0, align 4
@H2O_TOKEN_ETAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Sun, 06 Nov 1994 08:49:37 GMT\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Wed, 18 May 2033 12:33:20 GMT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_if_modified_since to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_if_modified_since() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %1, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %2, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_24__* @h2o_loopback_create(%struct.TYPE_15__* @ctx, i32 %16)
  store %struct.TYPE_24__* %17, %struct.TYPE_24__** %3, align 8
  %18 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = call i8* @h2o_iovec_init(i32 %18)
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  store i8* %19, i8** %23, align 8
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i8* @h2o_iovec_init(i32 %24)
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 0
  store i8* %25, i8** %29, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = call i32 @h2o_loopback_run_loop(%struct.TYPE_24__* %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 200
  %38 = zext i1 %37 to i32
  %39 = call i32 @ok(i32 %38)
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load i32, i32* @H2O_TOKEN_LAST_MODIFIED, align 4
  %45 = call i32 @h2o_find_header(%struct.TYPE_16__* %43, i32 %44, i32 -1)
  store i32 %45, i32* %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %0
  %48 = call i32 @ok(i32 0)
  store i32 1, i32* %5, align 4
  br label %234

49:                                               ; preds = %0
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %79 = call i32 @memcpy(i8* %13, i32 %77, i32 %78)
  %80 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %13, i64 %81
  store i8 0, i8* %82, align 1
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = call i32 @h2o_loopback_destroy(%struct.TYPE_24__* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.TYPE_24__* @h2o_loopback_create(%struct.TYPE_15__* @ctx, i32 %87)
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %6, align 8
  %89 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %90 = call i8* @h2o_iovec_init(i32 %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  store i8* %90, i8** %94, align 8
  %95 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %96 = call i8* @h2o_iovec_init(i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i8* %96, i8** %100, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load i32, i32* @H2O_TOKEN_IF_MODIFIED_SINCE, align 4
  %108 = load i32, i32* @H2O_TIMESTR_RFC1123_LEN, align 4
  %109 = call i32 (i32*, i32*, i32, i32*, i8*, ...) @h2o_add_header(i32* %103, i32* %106, i32 %107, i32* null, i8* %13, i32 %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %111 = call i32 @h2o_loopback_run_loop(%struct.TYPE_24__* %110)
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 304
  %118 = zext i1 %117 to i32
  %119 = call i32 @ok(i32 %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = call i32 @ok(i32 %126)
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 1
  %132 = load i32, i32* @H2O_TOKEN_ETAG, align 4
  %133 = call i32 @h2o_find_header(%struct.TYPE_16__* %131, i32 %132, i32 -1)
  %134 = icmp ne i32 %133, -1
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %138 = call i32 @h2o_loopback_destroy(%struct.TYPE_24__* %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call %struct.TYPE_24__* @h2o_loopback_create(%struct.TYPE_15__* @ctx, i32 %141)
  store %struct.TYPE_24__* %142, %struct.TYPE_24__** %7, align 8
  %143 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %144 = call i8* @h2o_iovec_init(i32 %143)
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  store i8* %144, i8** %148, align 8
  %149 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %150 = call i8* @h2o_iovec_init(i32 %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  store i8* %150, i8** %154, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = load i32, i32* @H2O_TOKEN_IF_MODIFIED_SINCE, align 4
  %162 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = call i32 (i32*, i32*, i32, i32*, i8*, ...) @h2o_add_header(i32* %157, i32* %160, i32 %161, i32* null, i8* %164)
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %167 = call i32 @h2o_loopback_run_loop(%struct.TYPE_24__* %166)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 200
  %174 = zext i1 %173 to i32
  %175 = call i32 @ok(i32 %174)
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %177 = call i32 @h2o_loopback_destroy(%struct.TYPE_24__* %176)
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.TYPE_24__* @h2o_loopback_create(%struct.TYPE_15__* @ctx, i32 %180)
  store %struct.TYPE_24__* %181, %struct.TYPE_24__** %8, align 8
  %182 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %183 = call i8* @h2o_iovec_init(i32 %182)
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  store i8* %183, i8** %187, align 8
  %188 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %189 = call i8* @h2o_iovec_init(i32 %188)
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  store i8* %189, i8** %193, align 8
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %198, i32 0, i32 1
  %200 = load i32, i32* @H2O_TOKEN_IF_MODIFIED_SINCE, align 4
  %201 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = call i32 (i32*, i32*, i32, i32*, i8*, ...) @h2o_add_header(i32* %196, i32* %199, i32 %200, i32* null, i8* %203)
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %206 = call i32 @h2o_loopback_run_loop(%struct.TYPE_24__* %205)
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp eq i32 %211, 304
  %213 = zext i1 %212 to i32
  %214 = call i32 @ok(i32 %213)
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp eq i64 %219, 0
  %221 = zext i1 %220 to i32
  %222 = call i32 @ok(i32 %221)
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 1
  %227 = load i32, i32* @H2O_TOKEN_ETAG, align 4
  %228 = call i32 @h2o_find_header(%struct.TYPE_16__* %226, i32 %227, i32 -1)
  %229 = icmp ne i32 %228, -1
  %230 = zext i1 %229 to i32
  %231 = call i32 @ok(i32 %230)
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %233 = call i32 @h2o_loopback_destroy(%struct.TYPE_24__* %232)
  store i32 0, i32* %5, align 4
  br label %234

234:                                              ; preds = %49, %47
  %235 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %5, align 4
  switch i32 %236, label %238 [
    i32 0, label %237
    i32 1, label %237
  ]

237:                                              ; preds = %234, %234
  ret void

238:                                              ; preds = %234
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_24__* @h2o_loopback_create(%struct.TYPE_15__*, i32) #2

declare dso_local i8* @h2o_iovec_init(i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

declare dso_local i32 @h2o_loopback_run_loop(%struct.TYPE_24__*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i32 @h2o_find_header(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @h2o_loopback_destroy(%struct.TYPE_24__*) #2

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
