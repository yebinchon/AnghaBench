; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_mcpm_entry.c_mcpm_cpu_powered_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_mcpm_entry.c_mcpm_cpu_powered_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32)* }

@platform_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EUNATCH = common dso_local global i32 0, align 4
@mcpm_lock = common dso_local global i32 0, align 4
@mcpm_cpu_use_count = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpm_cpu_powered_up() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @EUNATCH, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %77

13:                                               ; preds = %0
  %14 = call i32 (...) @read_cpuid_mpidr()
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @MPIDR_AFFINITY_LEVEL(i32 %17, i32 1)
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = call i32 @arch_spin_lock(i32* @mcpm_lock)
  %22 = load i32**, i32*** @mcpm_cpu_use_count, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mcpm_cluster_unused(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %13
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = icmp ne i32 (i32)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (i32)*, i32 (i32)** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 %46(i32 %47)
  br label %49

49:                                               ; preds = %43, %38, %13
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32**, i32*** @mcpm_cpu_use_count, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %49
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = icmp ne i32 (i32, i32)* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @platform_ops, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 %69(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %61
  %74 = call i32 @arch_spin_unlock(i32* @mcpm_lock)
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %73, %10
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @MPIDR_AFFINITY_LEVEL(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @mcpm_cluster_unused(i32) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
