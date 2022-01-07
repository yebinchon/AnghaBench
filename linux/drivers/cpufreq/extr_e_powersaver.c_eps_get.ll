; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_e_powersaver.c_eps_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_e_powersaver.c_eps_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eps_cpu_data = type { i32 }

@eps_cpu = common dso_local global %struct.eps_cpu_data** null, align 8
@MSR_IA32_PERF_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @eps_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eps_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eps_cpu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.eps_cpu_data**, %struct.eps_cpu_data*** @eps_cpu, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.eps_cpu_data*, %struct.eps_cpu_data** %11, i64 %13
  %15 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %14, align 8
  store %struct.eps_cpu_data* %15, %struct.eps_cpu_data** %4, align 8
  %16 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %4, align 8
  %17 = icmp eq %struct.eps_cpu_data* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %31

19:                                               ; preds = %10
  %20 = load i32, i32* @MSR_IA32_PERF_STATUS, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rdmsr(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.eps_cpu_data*, %struct.eps_cpu_data** %4, align 8
  %25 = getelementptr inbounds %struct.eps_cpu_data, %struct.eps_cpu_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = mul nsw i32 %26, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %19, %18, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
