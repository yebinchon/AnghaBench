; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_main.c_run_legacy_test_fn.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_main.c_run_legacy_test_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 (...)* }

@called = common dso_local global i64 0, align 8
@test_ok = common dso_local global i64 0, align 8
@in_legacy_test_wrapper = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Legacy unit test failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run_legacy_test_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.basic_test_data*
  store %struct.basic_test_data* %5, %struct.basic_test_data** %3, align 8
  store i64 0, i64* @called, align 8
  store i64 0, i64* @test_ok, align 8
  store i32 1, i32* @in_legacy_test_wrapper, align 4
  %6 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %7 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %6, i32 0, i32 0
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = call i32 (...) %8()
  store i32 0, i32* @in_legacy_test_wrapper, align 4
  %10 = load i64, i64* @test_ok, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  br label %15

15:                                               ; preds = %14
  store i64 0, i64* @test_ok, align 8
  ret void
}

declare dso_local i32 @tt_abort_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
