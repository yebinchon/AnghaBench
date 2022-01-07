; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_apm_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_apm_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpuidle_device = type { i32 }
%struct.cpuidle_driver = type { i32 }

@apm_cpu_idle.use_apm_idle = internal global i32 0, align 4
@apm_cpu_idle.last_jiffies = internal global i32 0, align 4
@apm_cpu_idle.last_stime = internal global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@IDLE_CALC_LIMIT = common dso_local global i32 0, align 4
@idle_period = common dso_local global i32 0, align 4
@idle_threshold = common dso_local global i32 0, align 4
@apm_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IDLE_LEAKY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @apm_cpu_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_cpu_idle(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.cpuidle_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %4, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i32, i32* @apm_cpu_idle.last_jiffies, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %91, %3
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @task_cputime(i32 %18, i64* %8, i64* %7)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @IDLE_CALC_LIMIT, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* @apm_cpu_idle.use_apm_idle, align 4
  br label %47

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @idle_period, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @apm_cpu_idle.last_stime, align 8
  %31 = sub nsw i64 %29, %30
  %32 = call i32 @nsecs_to_jiffies(i64 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul i32 %33, 100
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = udiv i32 %36, %35
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @idle_threshold, align 4
  %40 = icmp ugt i32 %38, %39
  %41 = zext i1 %40 to i32
  store i32 %41, i32* @apm_cpu_idle.use_apm_idle, align 4
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @apm_info, i32 0, i32 0), align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 0, i32* @apm_cpu_idle.use_apm_idle, align 4
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* @jiffies, align 4
  store i32 %48, i32* @apm_cpu_idle.last_jiffies, align 4
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* @apm_cpu_idle.last_stime, align 8
  %50 = load i32, i32* @IDLE_LEAKY_MAX, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %92, %74, %68, %47
  %52 = call i32 (...) @need_resched()
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %55, label %93

55:                                               ; preds = %51
  %56 = load i32, i32* @apm_cpu_idle.use_apm_idle, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load i32, i32* @jiffies, align 4
  store i32 %59, i32* %13, align 4
  %60 = call i32 (...) @apm_do_idle()
  switch i32 %60, label %80 [
    i32 0, label %61
    i32 1, label %79
  ]

61:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @jiffies, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @IDLE_LEAKY_MAX, align 4
  store i32 %69, i32* %11, align 4
  br label %51

70:                                               ; preds = %65
  br label %78

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %11, align 4
  br label %51

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %70
  br label %81

79:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  br label %81

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %79, %78
  br label %82

82:                                               ; preds = %81, %55
  %83 = call i32 (...) @default_idle()
  %84 = call i32 (...) @local_irq_disable()
  %85 = load i32, i32* @jiffies, align 4
  %86 = load i32, i32* @apm_cpu_idle.last_jiffies, align 4
  %87 = sub i32 %85, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @idle_period, align 4
  %90 = icmp ugt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %17

92:                                               ; preds = %82
  br label %51

93:                                               ; preds = %51
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (...) @apm_do_busy()
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @task_cputime(i32, i64*, i64*) #1

declare dso_local i32 @nsecs_to_jiffies(i64) #1

declare dso_local i32 @need_resched(...) #1

declare dso_local i32 @apm_do_idle(...) #1

declare dso_local i32 @default_idle(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @apm_do_busy(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
