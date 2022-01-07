; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_add_idle_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_add_idle_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_idle_states_t = type { i32, i64, i64, i8*, i32, i32, i32 }

@nr_pnv_idle_states = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cpuidle-powernv : Only Snooze is available\0A\00", align 1
@CPUIDLE_STATE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"cpuidle-powernv: discovered idle states more than allowed\00", align 1
@pnv_idle_states = common dso_local global %struct.pnv_idle_states_t* null, align 8
@OPAL_PM_STOP_INST_FAST = common dso_local global i32 0, align 4
@OPAL_PM_STOP_INST_DEEP = common dso_local global i32 0, align 4
@POWERNV_THRESHOLD_LATENCY_NS = common dso_local global i64 0, align 8
@OPAL_PM_TIMEBASE_STOP = common dso_local global i32 0, align 4
@OPAL_PM_NAP_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"Nap\00", align 1
@CPUIDLE_FLAG_NONE = common dso_local global i32 0, align 4
@nap_loop = common dso_local global i32 0, align 4
@stop_loop = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_TIMER_STOP = common dso_local global i32 0, align 4
@OPAL_PM_SLEEP_ENABLED = common dso_local global i32 0, align 4
@OPAL_PM_SLEEP_ENABLED_ER1 = common dso_local global i32 0, align 4
@fastsleep_loop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @powernv_add_idle_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_add_idle_states() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pnv_idle_states_t*, align 8
  store i32 1, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %10 = call i32 (...) @pnv_get_supported_cpuidle_states()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @nr_pnv_idle_states, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %130

15:                                               ; preds = %0
  %16 = load i32, i32* @nr_pnv_idle_states, align 4
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @nr_pnv_idle_states, align 4
  %18 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %19 = sub nsw i32 %18, 1
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** @pnv_idle_states, align 8
  %27 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %26, i64 0
  %28 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @OPAL_PM_STOP_INST_FAST, align 4
  %31 = load i32, i32* @OPAL_PM_STOP_INST_DEEP, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  store i32 %33, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %126, %25
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %129

38:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  %39 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** @pnv_idle_states, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %39, i64 %41
  store %struct.pnv_idle_states_t* %42, %struct.pnv_idle_states_t** %9, align 8
  %43 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %44 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %49 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %126

53:                                               ; preds = %38
  %54 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %55 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @POWERNV_THRESHOLD_LATENCY_NS, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %126

60:                                               ; preds = %53
  %61 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %62 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @DIV_ROUND_UP(i64 %63, i32 1000)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %66 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @DIV_ROUND_UP(i64 %67, i32 1000)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %73 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %126

77:                                               ; preds = %71, %60
  %78 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %79 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @OPAL_PM_TIMEBASE_STOP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %87 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @OPAL_PM_NAP_ENABLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @CPUIDLE_FLAG_NONE, align 4
  %95 = load i32, i32* @nap_loop, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @add_powernv_state(i32 %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97, i32 0, i32 0)
  br label %123

99:                                               ; preds = %85
  %100 = load i32, i32* %3, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %1, align 4
  %107 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %108 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @CPUIDLE_FLAG_NONE, align 4
  %111 = load i32, i32* @stop_loop, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %115 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.pnv_idle_states_t*, %struct.pnv_idle_states_t** %9, align 8
  %118 = getelementptr inbounds %struct.pnv_idle_states_t, %struct.pnv_idle_states_t* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @add_powernv_state(i32 %106, i8* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %116, i32 %119)
  br label %122

121:                                              ; preds = %102, %99
  br label %126

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %92
  %124 = load i32, i32* %1, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %1, align 4
  br label %126

126:                                              ; preds = %123, %121, %76, %59, %52
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %34

129:                                              ; preds = %34
  br label %130

130:                                              ; preds = %129, %13
  %131 = load i32, i32* %1, align 4
  ret i32 %131
}

declare dso_local i32 @pnv_get_supported_cpuidle_states(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @add_powernv_state(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
