; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_native_calibrate_tsc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_tsc.c_native_calibrate_tsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_VENDOR_INTEL = common dso_local global i64 0, align 8
@INTEL_FAM6_ATOM_GOLDMONT_D = common dso_local global i64 0, align 8
@X86_FEATURE_TSC_KNOWN_FREQ = common dso_local global i32 0, align 4
@INTEL_FAM6_ATOM_GOLDMONT = common dso_local global i64 0, align 8
@X86_FEATURE_TSC_RELIABLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@lapic_timer_period = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @native_calibrate_tsc() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %12 = load i64, i64* @X86_VENDOR_INTEL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i64 0, i64* %1, align 8
  br label %75

15:                                               ; preds = %0
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 8
  %17 = icmp slt i32 %16, 21
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 0, i64* %1, align 8
  br label %75

19:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %20 = call i32 @cpuid(i32 21, i32* %2, i32* %3, i32* %4, i32* %5)
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %19
  store i64 0, i64* %1, align 8
  br label %75

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = udiv i32 %28, 1000
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 8
  %34 = load i64, i64* @INTEL_FAM6_ATOM_GOLDMONT_D, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 25000, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32, %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @X86_FEATURE_TSC_KNOWN_FREQ, align 4
  %42 = call i32 @setup_force_cpu_cap(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 8
  %48 = icmp sge i32 %47, 22
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = call i32 @cpuid(i32 22, i32* %7, i32* %8, i32* %9, i32* %10)
  %51 = load i32, i32* %7, align 4
  %52 = mul i32 %51, 1000
  %53 = load i32, i32* %2, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %3, align 4
  %56 = udiv i32 %54, %55
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %46, %43
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 0, i64* %1, align 8
  br label %75

61:                                               ; preds = %57
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 8
  %63 = load i64, i64* @INTEL_FAM6_ATOM_GOLDMONT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @X86_FEATURE_TSC_RELIABLE, align 4
  %67 = call i32 @setup_force_cpu_cap(i32 %66)
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %3, align 4
  %71 = mul i32 %69, %70
  %72 = load i32, i32* %2, align 4
  %73 = udiv i32 %71, %72
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %1, align 8
  br label %75

75:                                               ; preds = %68, %60, %26, %18, %14
  %76 = load i64, i64* %1, align 8
  ret i64 %76
}

declare dso_local i32 @cpuid(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @setup_force_cpu_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
