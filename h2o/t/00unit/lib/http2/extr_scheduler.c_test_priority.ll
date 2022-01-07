; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_priority.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@output = common dso_local global i8* null, align 8
@max_cnt = common dso_local global i32 0, align 4
@iterate_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"A,B,A,B,C,A,B,A,B,A,B,C,A,B,A,B,C,A,B,A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"B,A,B,C,B,B,B,C,B,B\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"C,B,C,C,C,C,C,C,C,C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_priority() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  %11 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i8* null, i8** %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.1 to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %18 = bitcast %struct.TYPE_4__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 8, i1 false)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 ptrtoint ([2 x i8]* @.str.2 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %25 = bitcast %struct.TYPE_4__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %28 = call i32 @h2o_http2_scheduler_open(i32* %27, i32* %1, i32 32, i32 0)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %30 = call i32 @h2o_http2_scheduler_activate(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %32 = call i32 @h2o_http2_scheduler_open(i32* %31, i32* %1, i32 32, i32 0)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %34 = call i32 @h2o_http2_scheduler_activate(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %36 = call i32 @h2o_http2_scheduler_open(i32* %35, i32* %1, i32 12, i32 0)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %38 = call i32 @h2o_http2_scheduler_activate(i32* %37)
  %39 = load i8*, i8** @output, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 0, i8* %40, align 1
  store i32 20, i32* @max_cnt, align 4
  %41 = load i32, i32* @iterate_cb, align 4
  %42 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %41, i32* null)
  %43 = load i8*, i8** @output, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load i8*, i8** @output, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 0, i8* %50, align 1
  store i32 10, i32* @max_cnt, align 4
  %51 = load i32, i32* @iterate_cb, align 4
  %52 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %51, i32* null)
  %53 = load i8*, i8** @output, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load i8*, i8** @output, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 0, i8* %60, align 1
  store i32 10, i32* @max_cnt, align 4
  %61 = load i32, i32* @iterate_cb, align 4
  %62 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %61, i32* null)
  %63 = load i8*, i8** @output, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  %69 = call i32 @h2o_http2_scheduler_close(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %71 = call i32 @h2o_http2_scheduler_close(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %73 = call i32 @h2o_http2_scheduler_close(i32* %72)
  %74 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_http2_scheduler_init(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_open(i32*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_activate(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_run(i32*, i32, i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @h2o_http2_scheduler_close(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
