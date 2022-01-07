; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longrun.c_longrun_set_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_longrun.c_longrun_set_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@longrun_high_freq = common dso_local global i64 0, align 8
@longrun_low_freq = common dso_local global i64 0, align 8
@MSR_TMTA_LONGRUN_FLAGS = common dso_local global i32 0, align 4
@MSR_TMTA_LONGRUN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @longrun_set_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @longrun_set_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %8 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %9 = icmp ne %struct.cpufreq_policy* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %88

13:                                               ; preds = %1
  %14 = load i64, i64* @longrun_high_freq, align 8
  %15 = load i64, i64* @longrun_low_freq, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 100, i32* %7, align 4
  store i32 100, i32* %6, align 4
  br label %41

18:                                               ; preds = %13
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @longrun_low_freq, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i64, i64* @longrun_high_freq, align 8
  %25 = load i64, i64* @longrun_low_freq, align 8
  %26 = sub nsw i64 %24, %25
  %27 = sdiv i64 %26, 100
  %28 = sdiv i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @longrun_low_freq, align 8
  %34 = sub nsw i64 %32, %33
  %35 = load i64, i64* @longrun_high_freq, align 8
  %36 = load i64, i64* @longrun_low_freq, align 8
  %37 = sub nsw i64 %35, %36
  %38 = sdiv i64 %37, 100
  %39 = sdiv i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %18, %17
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 100
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 100, i32* %7, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* @MSR_TMTA_LONGRUN_FLAGS, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rdmsr(i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, -2
  store i32 %57, i32* %4, align 4
  %58 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %59 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %65 [
    i32 129, label %61
    i32 128, label %64
  ]

61:                                               ; preds = %51
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %51, %64, %61
  %66 = load i32, i32* @MSR_TMTA_LONGRUN_FLAGS, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @wrmsr(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @MSR_TMTA_LONGRUN_CTRL, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @rdmsr(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, -128
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, -128
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @MSR_TMTA_LONGRUN_CTRL, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @wrmsr(i32 %84, i32 %85, i32 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %65, %10
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
