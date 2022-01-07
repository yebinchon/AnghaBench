; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_mcpm_entry.c_mcpm_cpu_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_mcpm_entry.c_mcpm_cpu_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }

@platform_ops = common dso_local global %struct.TYPE_2__* null, align 8
@mcpm_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcpm_cpu_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %5 = icmp ne %struct.TYPE_2__* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON_ONCE(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %32

11:                                               ; preds = %0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = call i32 (...) @read_cpuid_mpidr()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %18, i32 0)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %20, i32 1)
  store i32 %21, i32* %3, align 4
  %22 = call i32 @arch_spin_lock(i32* @mcpm_lock)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 %25(i32 %26, i32 %27)
  %29 = call i32 @arch_spin_unlock(i32* @mcpm_lock)
  br label %30

30:                                               ; preds = %16, %11
  %31 = call i32 (...) @mcpm_cpu_power_down()
  br label %32

32:                                               ; preds = %30, %10
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @mcpm_cpu_power_down(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
