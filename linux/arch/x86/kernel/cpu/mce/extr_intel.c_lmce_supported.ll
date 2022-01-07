; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_lmce_supported.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_lmce_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MSR_IA32_MCG_CAP = common dso_local global i32 0, align 4
@MCG_SER_P = common dso_local global i32 0, align 4
@MCG_LMCE_P = common dso_local global i32 0, align 4
@MSR_IA32_FEATURE_CONTROL = common dso_local global i32 0, align 4
@FEATURE_CONTROL_LOCKED = common dso_local global i32 0, align 4
@FEATURE_CONTROL_LMCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lmce_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmce_supported() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %35

6:                                                ; preds = %0
  %7 = load i32, i32* @MSR_IA32_MCG_CAP, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @rdmsrl(i32 %7, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @MCG_SER_P, align 4
  %12 = load i32, i32* @MCG_LMCE_P, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @MCG_SER_P, align 4
  %16 = load i32, i32* @MCG_LMCE_P, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %35

20:                                               ; preds = %6
  %21 = load i32, i32* @MSR_IA32_FEATURE_CONTROL, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @rdmsrl(i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @FEATURE_CONTROL_LOCKED, align 4
  %26 = load i32, i32* @FEATURE_CONTROL_LMCE, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = load i32, i32* @FEATURE_CONTROL_LOCKED, align 4
  %30 = load i32, i32* @FEATURE_CONTROL_LMCE, align 4
  %31 = or i32 %29, %30
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i32 1, i32* %1, align 4
  br label %35

34:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %33, %19, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @rdmsrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
