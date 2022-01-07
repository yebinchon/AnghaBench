; ModuleID = '/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_inserted_timer_should_not_run_before_reaching_expiry.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_inserted_timer_should_not_run_before_reaching_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.theft = type { i32 }
%struct.test_input = type { i64, i64, i32 }
%struct.test_timer = type { i32, i32 }

@timer_cb = common dso_local global i32 0, align 4
@THEFT_TRIAL_FAIL = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i64 0, align 8
@THEFT_TRIAL_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.theft*, i8*)* @prop_inserted_timer_should_not_run_before_reaching_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_inserted_timer_should_not_run_before_reaching_expiry(%struct.theft* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.theft*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.test_input*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.test_timer, align 4
  store %struct.theft* %0, %struct.theft** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.test_input*
  store %struct.test_input* %13, %struct.test_input** %6, align 8
  %14 = load %struct.test_input*, %struct.test_input** %6, align 8
  %15 = getelementptr inbounds %struct.test_input, %struct.test_input* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @h2o_timerwheel_create(i32 6, i64 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.test_input*, %struct.test_input** %6, align 8
  %20 = getelementptr inbounds %struct.test_input, %struct.test_input* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @h2o_timerwheel_run(i32* %18, i64 %21)
  store i64 1, i64* %10, align 8
  %23 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %11, i32 0, i32 1
  %24 = load i32, i32* @timer_cb, align 4
  %25 = call i32 @h2o_timerwheel_init_entry(i32* %23, i32 %24)
  %26 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %11, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %11, i32 0, i32 1
  %29 = load %struct.test_input*, %struct.test_input** %6, align 8
  %30 = getelementptr inbounds %struct.test_input, %struct.test_input* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @h2o_timerwheel_link_abs(i32* %27, i32* %28, i64 %31)
  %33 = load %struct.test_input*, %struct.test_input** %6, align 8
  %34 = getelementptr inbounds %struct.test_input, %struct.test_input* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 100
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  %38 = load %struct.test_input*, %struct.test_input** %6, align 8
  %39 = getelementptr inbounds %struct.test_input, %struct.test_input* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %69, %2
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.test_input*, %struct.test_input** %6, align 8
  %44 = getelementptr inbounds %struct.test_input, %struct.test_input* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load i32*, i32** %9, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @h2o_timerwheel_run(i32* %48, i64 %49)
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %54, i32* %3, align 4
  br label %100

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %60, i32* %3, align 4
  br label %100

61:                                               ; preds = %55
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @h2o_timerwheel_get_wake_at(i32* %62)
  %64 = load i64, i64* @UINT64_MAX, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %67, i32* %3, align 4
  br label %100

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.theft*, %struct.theft** %4, align 8
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @theft_random_choice(%struct.theft* %70, i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %7, align 8
  br label %41

75:                                               ; preds = %41
  %76 = load i32*, i32** %9, align 8
  %77 = load i64, i64* %7, align 8
  %78 = call i64 @h2o_timerwheel_run(i32* %76, i64 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = icmp ne i64 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %82, i32* %3, align 4
  br label %100

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %88, i32* %3, align 4
  br label %100

89:                                               ; preds = %83
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @h2o_timerwheel_get_wake_at(i32* %90)
  %92 = load i64, i64* @UINT64_MAX, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %95, i32* %3, align 4
  br label %100

96:                                               ; preds = %89
  %97 = load i32*, i32** %9, align 8
  %98 = call i32 @h2o_timerwheel_destroy(i32* %97)
  %99 = load i32, i32* @THEFT_TRIAL_PASS, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %94, %87, %81, %66, %59, %53
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32* @h2o_timerwheel_create(i32, i64) #1

declare dso_local i64 @h2o_timerwheel_run(i32*, i64) #1

declare dso_local i32 @h2o_timerwheel_init_entry(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_link_abs(i32*, i32*, i64) #1

declare dso_local i64 @h2o_timerwheel_get_wake_at(i32*) #1

declare dso_local i64 @theft_random_choice(%struct.theft*, i64) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
