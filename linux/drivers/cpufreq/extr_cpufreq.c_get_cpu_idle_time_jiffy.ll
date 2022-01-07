; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_get_cpu_idle_time_jiffy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_get_cpu_idle_time_jiffy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@CPUTIME_USER = common dso_local global i64 0, align 8
@CPUTIME_SYSTEM = common dso_local global i64 0, align 8
@CPUTIME_IRQ = common dso_local global i64 0, align 8
@CPUTIME_SOFTIRQ = common dso_local global i64 0, align 8
@CPUTIME_STEAL = common dso_local global i64 0, align 8
@CPUTIME_NICE = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*)* @get_cpu_idle_time_jiffy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_cpu_idle_time_jiffy(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_2__, align 8
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca %struct.TYPE_2__, align 8
  %12 = alloca %struct.TYPE_2__, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %14 = call i32 (...) @get_jiffies_64()
  %15 = call i64 @jiffies64_to_nsecs(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64* @kcpustat_cpu(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64* %17, i64** %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @CPUTIME_USER, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i64* @kcpustat_cpu(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64* %25, i64** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @CPUTIME_SYSTEM, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i64* @kcpustat_cpu(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64* %35, i64** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @CPUTIME_IRQ, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i64* @kcpustat_cpu(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64* %45, i64** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @CPUTIME_SOFTIRQ, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i64* @kcpustat_cpu(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64* %55, i64** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @CPUTIME_STEAL, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call i64* @kcpustat_cpu(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64* %65, i64** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @CPUTIME_NICE, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %5, align 8
  %77 = load i64*, i64** %4, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %2
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @NSEC_PER_USEC, align 4
  %82 = call i64 @div_u64(i64 %80, i32 %81)
  %83 = load i64*, i64** %4, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %79, %2
  %85 = load i64, i64* %5, align 8
  %86 = load i32, i32* @NSEC_PER_USEC, align 4
  %87 = call i64 @div_u64(i64 %85, i32 %86)
  ret i64 %87
}

declare dso_local i64 @jiffies64_to_nsecs(i32) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i64* @kcpustat_cpu(i32) #1

declare dso_local i64 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
