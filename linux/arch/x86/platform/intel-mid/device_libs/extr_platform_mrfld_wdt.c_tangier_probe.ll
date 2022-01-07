; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/device_libs/extr_platform_mrfld_wdt.c_tangier_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-mid/device_libs/extr_platform_mrfld_wdt.c_tangier_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.intel_mid_wdt_pdata* }
%struct.intel_mid_wdt_pdata = type { i32 }
%struct.irq_alloc_info = type { i32 }

@TANGIER_EXT_TIMER0_MSI = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IOAPIC_MAP_ALLOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot find interrupt %d in ioapic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tangier_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tangier_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.irq_alloc_info, align 4
  %5 = alloca %struct.intel_mid_wdt_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.intel_mid_wdt_pdata*, %struct.intel_mid_wdt_pdata** %10, align 8
  store %struct.intel_mid_wdt_pdata* %11, %struct.intel_mid_wdt_pdata** %5, align 8
  %12 = load i32, i32* @TANGIER_EXT_TIMER0_MSI, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.intel_mid_wdt_pdata*, %struct.intel_mid_wdt_pdata** %5, align 8
  %14 = icmp ne %struct.intel_mid_wdt_pdata* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = call i32 @cpu_to_node(i32 0)
  %20 = call i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info* %4, i32 %19, i32 1, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IOAPIC_MAP_ALLOC, align 4
  %23 = call i32 @mp_map_gsi_to_irq(i32 %21, i32 %22, %struct.irq_alloc_info* %4)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_warn(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.intel_mid_wdt_pdata*, %struct.intel_mid_wdt_pdata** %5, align 8
  %35 = getelementptr inbounds %struct.intel_mid_wdt_pdata, %struct.intel_mid_wdt_pdata* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %26, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @ioapic_set_alloc_attr(%struct.irq_alloc_info*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @mp_map_gsi_to_irq(i32, i32, %struct.irq_alloc_info*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
