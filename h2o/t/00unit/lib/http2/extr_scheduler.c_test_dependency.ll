; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_dependency.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@output = common dso_local global i8* null, align 8
@max_cnt = common dso_local global i32 0, align 4
@iterate_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"A,B,A,B,C,A,B,A,B,A,B,C,A,B,A,B,C,A,B,A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"B,A,B,C,D,B,D,B,D,B,C,D,B,D,B,C,D,B,D,B\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"D,B,C,D,D,D,C,D,D,C,D,D,D,C,D,D,C,D,D,D\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"D,C,B,D,B,D,B,C,D,B,D,B,D,C,B,D,B,D,B,C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dependency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i8* null, i8** %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 4
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 5
  %13 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 4
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 5
  %21 = bitcast %struct.TYPE_7__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* null, i8** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.2 to i32), i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  %29 = bitcast %struct.TYPE_7__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 8, i1 false)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8* null, i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.3 to i32), i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 4
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 5
  %37 = bitcast %struct.TYPE_7__* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 8, i1 false)
  %38 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %40 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %39, i32* %1, i32 32, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %42 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %41)
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %44 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %43, i32* %1, i32 32, i32 0)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %46 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %48 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %47, i32* %1, i32 12, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %50 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %49)
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %51, i32* %53, i32 6, i32 0)
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %56 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %55)
  %57 = load i8*, i8** @output, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  store i32 20, i32* @max_cnt, align 4
  %59 = load i32, i32* @iterate_cb, align 4
  %60 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %59, i32* null)
  %61 = load i8*, i8** @output, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ok(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  store i32 0, i32* %66, align 4
  %67 = load i8*, i8** @output, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %68, align 1
  store i32 20, i32* @max_cnt, align 4
  %69 = load i32, i32* @iterate_cb, align 4
  %70 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %69, i32* null)
  %71 = load i8*, i8** @output, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 0, i32* %76, align 4
  %77 = load i8*, i8** @output, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  store i32 20, i32* @max_cnt, align 4
  %79 = load i32, i32* @iterate_cb, align 4
  %80 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %79, i32* null)
  %81 = load i8*, i8** @output, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 3
  %87 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %89 = call i32 @h2o_http2_scheduler_activate(%struct.TYPE_10__* %88)
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  store i32 1, i32* %90, align 4
  %91 = load i8*, i8** @output, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  store i8 0, i8* %92, align 1
  store i32 20, i32* @max_cnt, align 4
  %93 = load i32, i32* @iterate_cb, align 4
  %94 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %93, i32* null)
  %95 = load i8*, i8** @output, align 8
  %96 = call i64 @strcmp(i8* %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @ok(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 3
  %101 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %100)
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %103 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 3
  %105 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %104)
  %106 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
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
