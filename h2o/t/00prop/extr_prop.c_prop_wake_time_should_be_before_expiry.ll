; ModuleID = '/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_wake_time_should_be_before_expiry.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00prop/extr_prop.c_prop_wake_time_should_be_before_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.theft = type { i32 }
%struct.test_input = type { i64, i64, i32 }
%struct.test_timer = type { i32, i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@THEFT_TRIAL_FAIL = common dso_local global i32 0, align 4
@timer_cb = common dso_local global i32 0, align 4
@THEFT_TRIAL_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.theft*, i8*)* @prop_wake_time_should_be_before_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prop_wake_time_should_be_before_expiry(%struct.theft* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.theft*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.test_input*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.test_timer, align 4
  store %struct.theft* %0, %struct.theft** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.test_input*
  store %struct.test_input* %14, %struct.test_input** %6, align 8
  store i64 1, i64* %10, align 8
  %15 = load %struct.test_input*, %struct.test_input** %6, align 8
  %16 = getelementptr inbounds %struct.test_input, %struct.test_input* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32* @h2o_timerwheel_create(i32 6, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.test_input*, %struct.test_input** %6, align 8
  %21 = getelementptr inbounds %struct.test_input, %struct.test_input* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @h2o_timerwheel_run(i32* %19, i64 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @h2o_timerwheel_get_wake_at(i32* %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @UINT64_MAX, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %129

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %12, i32 0, i32 1
  %33 = load i32, i32* @timer_cb, align 4
  %34 = call i32 @h2o_timerwheel_init_entry(i32* %32, i32 %33)
  %35 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %12, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %12, i32 0, i32 1
  %38 = load %struct.test_input*, %struct.test_input** %6, align 8
  %39 = getelementptr inbounds %struct.test_input, %struct.test_input* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @h2o_timerwheel_link_abs(i32* %36, i32* %37, i64 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @h2o_timerwheel_get_wake_at(i32* %42)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.test_input*, %struct.test_input** %6, align 8
  %46 = getelementptr inbounds %struct.test_input, %struct.test_input* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %31
  %50 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %50, i32* %3, align 4
  br label %129

51:                                               ; preds = %31
  %52 = load %struct.test_input*, %struct.test_input** %6, align 8
  %53 = getelementptr inbounds %struct.test_input, %struct.test_input* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 100
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %10, align 8
  %57 = load %struct.test_input*, %struct.test_input** %6, align 8
  %58 = getelementptr inbounds %struct.test_input, %struct.test_input* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  br label %60

60:                                               ; preds = %98, %51
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.test_input*, %struct.test_input** %6, align 8
  %63 = getelementptr inbounds %struct.test_input, %struct.test_input* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i64 @h2o_timerwheel_run(i32* %67, i64 %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %73, i32* %3, align 4
  br label %129

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %79, i32* %3, align 4
  br label %129

80:                                               ; preds = %74
  %81 = load i32*, i32** %9, align 8
  %82 = call i64 @h2o_timerwheel_get_wake_at(i32* %81)
  %83 = load i64, i64* @UINT64_MAX, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %86, i32* %3, align 4
  br label %129

87:                                               ; preds = %80
  %88 = load i32*, i32** %9, align 8
  %89 = call i64 @h2o_timerwheel_get_wake_at(i32* %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.test_input*, %struct.test_input** %6, align 8
  %92 = getelementptr inbounds %struct.test_input, %struct.test_input* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %96, i32* %3, align 4
  br label %129

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.theft*, %struct.theft** %4, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call i64 @theft_random_choice(%struct.theft* %99, i64 %100)
  %102 = load i64, i64* %7, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %7, align 8
  br label %60

104:                                              ; preds = %60
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @h2o_timerwheel_run(i32* %105, i64 %106)
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %111, i32* %3, align 4
  br label %129

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.test_timer, %struct.test_timer* %12, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %117, i32* %3, align 4
  br label %129

118:                                              ; preds = %112
  %119 = load i32*, i32** %9, align 8
  %120 = call i64 @h2o_timerwheel_get_wake_at(i32* %119)
  %121 = load i64, i64* @UINT64_MAX, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* @THEFT_TRIAL_FAIL, align 4
  store i32 %124, i32* %3, align 4
  br label %129

125:                                              ; preds = %118
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @h2o_timerwheel_destroy(i32* %126)
  %128 = load i32, i32* @THEFT_TRIAL_PASS, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %125, %123, %116, %110, %95, %85, %78, %72, %49, %29
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32* @h2o_timerwheel_create(i32, i64) #1

declare dso_local i64 @h2o_timerwheel_run(i32*, i64) #1

declare dso_local i64 @h2o_timerwheel_get_wake_at(i32*) #1

declare dso_local i32 @h2o_timerwheel_init_entry(i32*, i32) #1

declare dso_local i32 @h2o_timerwheel_link_abs(i32*, i32*, i64) #1

declare dso_local i64 @theft_random_choice(%struct.theft*, i64) #1

declare dso_local i32 @h2o_timerwheel_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
