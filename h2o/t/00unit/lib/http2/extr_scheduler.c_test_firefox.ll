; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_firefox.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_firefox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_10__, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"g1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"g2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"g3\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"g4\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"g5\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"r1\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"r2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"r3\00", align 1
@output = common dso_local global i8* null, align 8
@max_cnt = common dso_local global i32 0, align 4
@iterate_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"r1,r1,r1,r1,r1\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"r2,r3,r2,r3,r2\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"r3,r2,r1,r1,r1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_firefox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_firefox() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i8* null, i8** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 5
  %17 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.1 to i32), i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %25 = bitcast %struct.TYPE_7__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* null, i8** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.2 to i32), i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %33 = bitcast %struct.TYPE_7__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 8, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8* null, i8** %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.3 to i32), i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32 0, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %41 = bitcast %struct.TYPE_7__* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %41, i8 0, i64 8, i1 false)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* null, i8** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.4 to i32), i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 5
  %49 = bitcast %struct.TYPE_7__* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 8, i1 false)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* null, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.5 to i32), i32* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  %57 = bitcast %struct.TYPE_7__* %56 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %57, i8 0, i64 8, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  store i8* null, i8** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.6 to i32), i32* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 5
  %65 = bitcast %struct.TYPE_7__* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %65, i8 0, i64 8, i1 false)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i8* null, i8** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  store i32 ptrtoint ([3 x i8]* @.str.7 to i32), i32* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 4
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %73 = bitcast %struct.TYPE_7__* %72 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %73, i8 0, i64 8, i1 false)
  %74 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %76 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %75, i32* %1, i32 201, i32 0)
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %78 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %77, i32* %1, i32 101, i32 0)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %80 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %79, i32* %1, i32 1, i32 0)
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %81, i32* %83, i32 1, i32 0)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %85, i32* %87, i32 1, i32 0)
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %89, i32* %91, i32 22, i32 0)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %94 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %93)
  %95 = load i8*, i8** @output, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 0, i8* %96, align 1
  store i32 5, i32* @max_cnt, align 4
  %97 = load i32, i32* @iterate_cb, align 4
  %98 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %97, i32* null)
  %99 = load i8*, i8** @output, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @ok(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %104, i32* %106, i32 22, i32 0)
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %109 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %108)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %110, i32* %112, i32 22, i32 0)
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %115 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %114)
  %116 = load i8*, i8** @output, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  store i8 0, i8* %117, align 1
  store i32 5, i32* @max_cnt, align 4
  %118 = load i32, i32* @iterate_cb, align 4
  %119 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %118, i32* null)
  %120 = load i8*, i8** @output, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @ok(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load i8*, i8** @output, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  store i8 0, i8* %128, align 1
  store i32 5, i32* @max_cnt, align 4
  %129 = load i32, i32* @iterate_cb, align 4
  %130 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %129, i32* null)
  %131 = load i8*, i8** @output, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  %135 = call i32 @ok(i32 %134)
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %137 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %136)
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %139 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %138)
  %140 = load i8*, i8** @output, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  store i8 0, i8* %141, align 1
  store i32 5, i32* @max_cnt, align 4
  %142 = load i32, i32* @iterate_cb, align 4
  %143 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %142, i32* null)
  %144 = load i8*, i8** @output, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @ok(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %150 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %149)
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %152 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %151)
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %154 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %153)
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %156 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %155)
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %158 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %157)
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %160 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %159)
  %161 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_http2_scheduler_init(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_open(%struct.TYPE_10__*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__*) #2

declare dso_local i32 @h2o_http2_scheduler_run(i32*, i32, i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @h2o_http2_scheduler_close(%struct.TYPE_10__*) #2

declare dso_local i32 @h2o_http2_scheduler_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
