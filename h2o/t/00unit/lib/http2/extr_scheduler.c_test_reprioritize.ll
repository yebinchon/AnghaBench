; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_reprioritize.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_scheduler.c_test_reprioritize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@output = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"(A6(B5C4(D3(F1)E2)))\00", align 1
@test_reprioritize_exclusive = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"(D3(F1A1(B5C4(E2))))\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"(D3(A1(B5C4(E2)F1)))\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_reprioritize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_reprioritize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 2
  %12 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i8* null, i8** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str.1 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 2
  %17 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str.2 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %22 = bitcast %struct.TYPE_7__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i8* null, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str.3 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %27 = bitcast %struct.TYPE_7__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 8, i1 false)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* null, i8** %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str.4 to i32), i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %32 = bitcast %struct.TYPE_7__* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 ptrtoint ([2 x i8]* @.str.5 to i32), i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %37 = bitcast %struct.TYPE_7__* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 8, i1 false)
  %38 = call i32 @h2o_http2_scheduler_init(i32* %1)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %40 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %39, i32* %1, i32 6, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %41, i32* %43, i32 5, i32 0)
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %45, i32* %47, i32 4, i32 0)
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %49, i32* %51, i32 3, i32 0)
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %53, i32* %55, i32 2, i32 0)
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @h2o_http2_scheduler_open(%struct.TYPE_10__* %57, i32* %59, i32 1, i32 0)
  %61 = load i8*, i8** @output, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 0, i8* %62, align 1
  %63 = call i32 @dump_tree(i32* %1)
  %64 = load i8*, i8** @output, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @ok(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* @test_reprioritize_exclusive, align 4
  %73 = call i32 @h2o_http2_scheduler_rebind(%struct.TYPE_10__* %69, i32* %71, i32 1, i32 %72)
  %74 = load i8*, i8** @output, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 0, i8* %75, align 1
  %76 = call i32 @dump_tree(i32* %1)
  %77 = load i32, i32* @test_reprioritize_exclusive, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %0
  %80 = load i8*, i8** @output, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @ok(i32 %83)
  br label %91

85:                                               ; preds = %0
  %86 = load i8*, i8** @output, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ok(i32 %89)
  br label %91

91:                                               ; preds = %85, %79
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 1
  %93 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %92)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %95 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %94)
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %97 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %96)
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %99 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %98)
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %101 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %100)
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %103 = call i32 @h2o_http2_scheduler_close(%struct.TYPE_10__* %102)
  %104 = call i32 @h2o_http2_scheduler_dispose(i32* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @h2o_http2_scheduler_init(i32*) #2

declare dso_local i32 @h2o_http2_scheduler_open(%struct.TYPE_10__*, i32*, i32, i32) #2

declare dso_local i32 @dump_tree(i32*) #2

declare dso_local i32 @ok(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @h2o_http2_scheduler_rebind(%struct.TYPE_10__*, i32*, i32, i32) #2

declare dso_local i32 @h2o_http2_scheduler_close(%struct.TYPE_10__*) #2

declare dso_local i32 @h2o_http2_scheduler_dispose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
