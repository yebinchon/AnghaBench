; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_power_saving_mwait_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_pad.c_power_saving_mwait_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@X86_FEATURE_MWAIT = common dso_local global i32 0, align 4
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUID_MWAIT_LEAF = common dso_local global i64 0, align 8
@CPUID5_ECX_EXTENSIONS_SUPPORTED = common dso_local global i32 0, align 4
@CPUID5_ECX_INTERRUPT_BREAK = common dso_local global i32 0, align 4
@MWAIT_SUBSTATE_SIZE = common dso_local global i32 0, align 4
@MWAIT_SUBSTATE_MASK = common dso_local global i32 0, align 4
@power_saving_mwait_eax = common dso_local global i32 0, align 4
@X86_FEATURE_NONSTOP_TSC = common dso_local global i32 0, align 4
@tsc_detected_unstable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @power_saving_mwait_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_saving_mwait_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @X86_FEATURE_MWAIT, align 4
  %9 = call i32 @boot_cpu_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %66

12:                                               ; preds = %0
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 8
  %14 = load i64, i64* @CPUID_MWAIT_LEAF, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %66

17:                                               ; preds = %12
  %18 = load i64, i64* @CPUID_MWAIT_LEAF, align 8
  %19 = call i32 @cpuid(i64 %18, i32* %1, i32* %2, i32* %3, i32* %4)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CPUID5_ECX_EXTENSIONS_SUPPORTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @CPUID5_ECX_INTERRUPT_BREAK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %17
  br label %66

30:                                               ; preds = %24
  %31 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %32 = load i32, i32* %4, align 4
  %33 = lshr i32 %32, %31
  store i32 %33, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 7
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %59

42:                                               ; preds = %40
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MWAIT_SUBSTATE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MWAIT_SUBSTATE_MASK, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %57 = load i32, i32* %4, align 4
  %58 = lshr i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %34

59:                                               ; preds = %40
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @MWAIT_SUBSTATE_SIZE, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = sub i32 %63, 1
  %65 = or i32 %62, %64
  store i32 %65, i32* @power_saving_mwait_eax, align 4
  br label %66

66:                                               ; preds = %59, %29, %16, %11
  ret void
}

declare dso_local i32 @boot_cpu_has(i32) #1

declare dso_local i32 @cpuid(i64, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
