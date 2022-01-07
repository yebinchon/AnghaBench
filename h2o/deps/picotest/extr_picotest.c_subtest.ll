; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotest/extr_picotest.c_subtest.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotest/extr_picotest.c_subtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_t = type { i32 }

@cur_tests = common dso_local global %struct.test_t* null, align 8
@test_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Subtest: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subtest(i8* %0, void ()* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca void ()*, align 8
  %5 = alloca %struct.test_t, align 4
  %6 = alloca %struct.test_t*, align 8
  store i8* %0, i8** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %7 = bitcast %struct.test_t* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.test_t*, %struct.test_t** @cur_tests, align 8
  store %struct.test_t* %8, %struct.test_t** %6, align 8
  store %struct.test_t* %5, %struct.test_t** @cur_tests, align 8
  %9 = load i32, i32* @test_level, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @test_level, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @note(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load void ()*, void ()** %4, align 8
  call void %13()
  %14 = call i32 (...) @done_testing()
  %15 = load i32, i32* @test_level, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* @test_level, align 4
  %17 = load %struct.test_t*, %struct.test_t** %6, align 8
  store %struct.test_t* %17, %struct.test_t** @cur_tests, align 8
  %18 = getelementptr inbounds %struct.test_t, %struct.test_t* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.test_t*, %struct.test_t** @cur_tests, align 8
  %23 = getelementptr inbounds %struct.test_t, %struct.test_t* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = getelementptr inbounds %struct.test_t, %struct.test_t* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @_ok(i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @note(i8*, i8*) #2

declare dso_local i32 @done_testing(...) #2

declare dso_local i32 @_ok(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
