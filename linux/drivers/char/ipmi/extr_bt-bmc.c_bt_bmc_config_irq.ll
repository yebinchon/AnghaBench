; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_bt-bmc.c_bt_bmc_config_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_bt-bmc.c_bt_bmc_config_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_bmc = type { i64, i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@bt_bmc_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unable to request IRQ %d\0A\00", align 1
@BT_CR1 = common dso_local global i64 0, align 8
@BT_CR1_IRQ_H2B = common dso_local global i32 0, align 4
@BT_CR1_IRQ_HBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_bmc*, %struct.platform_device*)* @bt_bmc_config_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_bmc_config_irq(%struct.bt_bmc* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_bmc*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.bt_bmc* %0, %struct.bt_bmc** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call i32 @platform_get_irq(%struct.platform_device* %10, i32 0)
  %12 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %13 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %15 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %24 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @bt_bmc_irq, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = load i32, i32* @DEVICE_NAME, align 4
  %29 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %30 = call i32 @devm_request_irq(%struct.device* %22, i32 %25, i32 %26, i32 %27, i32 %28, %struct.bt_bmc* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %36 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_warn(%struct.device* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %40 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %39, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %59

42:                                               ; preds = %21
  %43 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %44 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.bt_bmc*, %struct.bt_bmc** %4, align 8
  %47 = getelementptr inbounds %struct.bt_bmc, %struct.bt_bmc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BT_CR1, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @BT_CR1_IRQ_H2B, align 4
  %52 = load i32, i32* @BT_CR1_IRQ_HBUSY, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @BT_CR1_IRQ_H2B, align 4
  %55 = load i32, i32* @BT_CR1_IRQ_HBUSY, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @regmap_update_bits(i32 %45, i64 %50, i32 %53, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %42, %33, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.bt_bmc*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
