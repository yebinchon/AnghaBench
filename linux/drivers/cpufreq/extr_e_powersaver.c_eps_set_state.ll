; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_e_powersaver.c_eps_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_e_powersaver.c_eps_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eps_cpu_data = type { i32 }
%struct.cpufreq_policy = type { i32 }

@MSR_IA32_PERF_STATUS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MSR_IA32_PERF_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eps_cpu_data*, %struct.cpufreq_policy*, i32)* @eps_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eps_set_state(%struct.eps_cpu_data* %0, %struct.cpufreq_policy* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eps_cpu_data*, align 8
  %6 = alloca %struct.cpufreq_policy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eps_cpu_data* %0, %struct.eps_cpu_data** %5, align 8
  store %struct.cpufreq_policy* %1, %struct.cpufreq_policy** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @rdmsr(i32 %11, i32 %12, i32 %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %35, %3
  %16 = load i32, i32* %8, align 4
  %17 = and i32 %16, 196608
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = call i32 @udelay(i32 16)
  %21 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @rdmsr(i32 %21, i32 %22, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 64
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %19
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* @MSR_IA32_PERF_CTL, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 65535
  %40 = call i32 @wrmsr(i32 %37, i32 %39, i32 0)
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %58, %36
  %42 = call i32 @udelay(i32 16)
  %43 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @rdmsr(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %49, 64
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %63

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 196608
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %41, label %62

62:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %54, %32
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
