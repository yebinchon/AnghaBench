; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_apm_engage_power_management.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_apm_32.c_apm_engage_power_management.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@APM_DEVICE_ALL = common dso_local global i64 0, align 8
@apm_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@APM_BIOS_DISABLED = common dso_local global i32 0, align 4
@APM_DISABLED = common dso_local global i32 0, align 4
@APM_FUNC_ENGAGE_PM = common dso_local global i32 0, align 4
@APM_BIOS_DISENGAGED = common dso_local global i32 0, align 4
@APM_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @apm_engage_power_management to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_engage_power_management(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @APM_DEVICE_ALL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0, i32 0), align 4
  %16 = load i32, i32* @APM_BIOS_DISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @APM_DISABLED, align 4
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %14, %10, %2
  %22 = load i32, i32* @APM_FUNC_ENGAGE_PM, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @apm_bios_call_simple(i32 %22, i64 %23, i32 %24, i32* %6, i32* %7)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @APM_DEVICE_ALL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* @APM_BIOS_DISENGAGED, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0, i32 0), align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0, i32 0), align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @APM_BIOS_DISENGAGED, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0, i32 0), align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @apm_info, i32 0, i32 0, i32 0), align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* @APM_SUCCESS, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %27, %19
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @apm_bios_call_simple(i32, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
