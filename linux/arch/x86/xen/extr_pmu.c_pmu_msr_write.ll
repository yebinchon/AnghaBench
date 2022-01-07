; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_pmu_msr_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_pmu_msr_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmu_msr_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = shl i32 %13, 32
  %15 = load i32, i32* %7, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %18 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @is_amd_pmu_msr(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @xen_amd_pmu_emulate(i32 %25, i32* %10, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @native_write_msr_safe(i32 %29, i32 %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %24
  store i32 1, i32* %5, align 4
  br label %55

35:                                               ; preds = %20
  br label %54

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @is_intel_pmu_msr(i32 %37, i32* %11, i32* %12)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @xen_intel_pmu_emulate(i32 %41, i32* %10, i32 %42, i32 %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @native_write_msr_safe(i32 %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %40
  store i32 1, i32* %5, align 4
  br label %55

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %35
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %52, %34
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i64 @is_amd_pmu_msr(i32) #1

declare dso_local i32 @xen_amd_pmu_emulate(i32, i32*, i32) #1

declare dso_local i32 @native_write_msr_safe(i32, i32, i32) #1

declare dso_local i64 @is_intel_pmu_msr(i32, i32*, i32*) #1

declare dso_local i32 @xen_intel_pmu_emulate(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
