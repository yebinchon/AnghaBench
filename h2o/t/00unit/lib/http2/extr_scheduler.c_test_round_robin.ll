; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_round_robin.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_round_robin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@output = common dso_local global i8* null, align 8
@max_cnt = common dso_local global i32 0, align 4
@iterate_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"A,A,A,A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"A,B,C,A,B,C,A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"B,C,A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"A,B\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_round_robin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_round_robin() #0 {
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
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store i32 0, i32* %9, align 4
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
  store i32 0, i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 4
  store i32 0, i32* %16, align 4
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
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 5
  %25 = bitcast %struct.TYPE_4__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %28 = call i32 @h2o_http2_scheduler_open(i32* %27, i32* %1, i32 1, i32 0)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %30 = call i32 @h2o_http2_scheduler_open(i32* %29, i32* %1, i32 1, i32 0)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %32 = call i32 @h2o_http2_scheduler_open(i32* %31, i32* %1, i32 1, i32 0)
  %33 = load i8*, i8** @output, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 0, i8* %34, align 1
  store i32 4, i32* @max_cnt, align 4
  %35 = load i32, i32* @iterate_cb, align 4
  %36 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %35, i32* null)
  %37 = load i8*, i8** @output, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %43 = call i32 @h2o_http2_scheduler_activate(i32* %42)
  %44 = load i8*, i8** @output, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  store i8 0, i8* %45, align 1
  store i32 4, i32* @max_cnt, align 4
  %46 = load i32, i32* @iterate_cb, align 4
  %47 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %46, i32* null)
  %48 = load i8*, i8** @output, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ok(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load i8*, i8** @output, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  store i32 4, i32* @max_cnt, align 4
  %56 = load i32, i32* @iterate_cb, align 4
  %57 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %56, i32* null)
  %58 = load i8*, i8** @output, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %64 = call i32 @h2o_http2_scheduler_activate(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 1, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %67 = call i32 @h2o_http2_scheduler_activate(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %69 = call i32 @h2o_http2_scheduler_activate(i32* %68)
  %70 = load i8*, i8** @output, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %71, align 1
  store i32 7, i32* @max_cnt, align 4
  %72 = load i32, i32* @iterate_cb, align 4
  %73 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %72, i32* null)
  %74 = load i8*, i8** @output, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @ok(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  store i32 0, i32* %81, align 4
  %82 = load i8*, i8** @output, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  store i8 0, i8* %83, align 1
  store i32 4, i32* @max_cnt, align 4
  %84 = load i32, i32* @iterate_cb, align 4
  %85 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %84, i32* null)
  %86 = load i8*, i8** @output, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %92 = call i32 @h2o_http2_scheduler_close(i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %94 = call i32 @h2o_http2_scheduler_activate(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %96 = call i32 @h2o_http2_scheduler_activate(i32* %95)
  %97 = load i8*, i8** @output, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  store i8 0, i8* %98, align 1
  store i32 4, i32* @max_cnt, align 4
  %99 = load i32, i32* @iterate_cb, align 4
  %100 = call i32 @h2o_http2_scheduler_run(i32* %1, i32 %99, i32* null)
  %101 = load i8*, i8** @output, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @ok(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  %107 = call i32 @h2o_http2_scheduler_close(i32* %106)
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %109 = call i32 @h2o_http2_scheduler_close(i32* %108)
  %110 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_http2_scheduler_init(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_open(i32*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_run(i32*, i32, i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @h2o_http2_scheduler_activate(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_close(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
