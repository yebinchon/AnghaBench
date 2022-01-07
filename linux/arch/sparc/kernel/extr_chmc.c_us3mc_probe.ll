; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_us3mc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_chmc.c_us3mc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@mc_type = common dso_local global i64 0, align 8
@MC_TYPE_SAFARI = common dso_local global i64 0, align 8
@MC_TYPE_JBUS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @us3mc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us3mc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %4 = load i64, i64* @mc_type, align 8
  %5 = load i64, i64* @MC_TYPE_SAFARI, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call i32 @chmc_probe(%struct.platform_device* %8)
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load i64, i64* @mc_type, align 8
  %12 = load i64, i64* @MC_TYPE_JBUS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @jbusmc_probe(%struct.platform_device* %15)
  store i32 %16, i32* %2, align 4
  br label %21

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %14, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @chmc_probe(%struct.platform_device*) #1

declare dso_local i32 @jbusmc_probe(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
