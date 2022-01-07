; ModuleID = '/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_inserted_timer_should_not_run_before_expiry.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_inserted_timer_should_not_run_before_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.theft = type { i32 }
%struct.test_input = type { i32, i32, i32 }
%struct.test_timer = type { i64, i32 }

@timer_cb = common dso_local global i32 0, align 4
@THEFT_TRIAL_FAIL = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@THEFT_TRIAL_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.theft*, i8*)* @prop_inserted_timer_should_not_run_before_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_inserted_timer_should_not_run_before_expiry(%struct.theft* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.theft*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.test_input*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.test_timer, align 8
  store %struct.theft* %0, %struct.theft** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.test_input*
  store %struct.test_input* %11, %struct.test_input** %6, align 8
  %12 = load %struct.test_input*, %struct.test_input** %6, align 8
  %13 = getelementptr inbounds %struct.test_input, %struct.test_input* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @h2o_timerwheel_create(i32 6, i32 %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load %struct.test_input*, %struct.test_input** %6, align 8
  %18 = getelementptr inbounds %struct.test_input, %struct.test_input* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @h2o_timerwheel_run(i32* %16, i32 %19)
  %21 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %9, i32 0, i32 1
  %22 = load i32, i32* @timer_cb, align 4
  %23 = call i32 @h2o_timerwheel_init_entry(i32* %21, i32 %22)
  %24 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %9, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %9, i32 0, i32 1
  %27 = load %struct.test_input*, %struct.test_input** %6, align 8
  %28 = getelementptr inbounds %struct.test_input, %struct.test_input* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @h2o_timerwheel_link_abs(i32* %25, i32* %26, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.test_input*, %struct.test_input** %6, align 8
  %33 = getelementptr inbounds %struct.test_input, %struct.test_input* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @h2o_timerwheel_run(i32* %31, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %9, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %40
  %47 = load i32*, i32** %8, align 8
  %48 = call i64 @h2o_timerwheel_get_wake_at(i32* %47)
  %49 = load i64, i64* @UINT64_MAX, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @h2o_timerwheel_destroy(i32* %54)
  %56 = load i32, i32* @THEFT_TRIAL_PASS, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %51, %44, %38
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @h2o_timerwheel_create(i32, i32) #1

declare dso_local i64 @h2o_timerwheel_run(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_init_entry(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_link_abs(i32*, i32*, i32) #1

declare dso_local i64 @h2o_timerwheel_get_wake_at(i32*) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
