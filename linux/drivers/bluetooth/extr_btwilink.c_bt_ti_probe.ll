; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_bt_ti_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_bt_ti_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ti_st = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hdev %p\00", align 1
@HCI_UART = common dso_local global i32 0, align 4
@ti_st_open = common dso_local global i32 0, align 4
@ti_st_close = common dso_local global i32 0, align 4
@ti_st_send_frame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't register HCI device error %d\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"HCI device registered (hdev %p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bt_ti_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_ti_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ti_st*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ti_st* @devm_kzalloc(i32* %8, i32 8, i32 %9)
  store %struct.ti_st* %10, %struct.ti_st** %4, align 8
  %11 = load %struct.ti_st*, %struct.ti_st** %4, align 8
  %12 = icmp ne %struct.ti_st* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %17, %struct.hci_dev** %5, align 8
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = icmp ne %struct.hci_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %16
  %24 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %27 = load %struct.ti_st*, %struct.ti_st** %4, align 8
  %28 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %27, i32 0, i32 0
  store %struct.hci_dev* %26, %struct.hci_dev** %28, align 8
  %29 = load i32, i32* @HCI_UART, align 4
  %30 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %33 = load %struct.ti_st*, %struct.ti_st** %4, align 8
  %34 = call i32 @hci_set_drvdata(%struct.hci_dev* %32, %struct.ti_st* %33)
  %35 = load i32, i32* @ti_st_open, align 4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ti_st_close, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* @ti_st_send_frame, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %47 = call i32 @hci_register_dev(%struct.hci_dev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %23
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = call i32 @hci_free_dev(%struct.hci_dev* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %63

56:                                               ; preds = %23
  %57 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %58 = call i32 @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), %struct.hci_dev* %57)
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = load %struct.ti_st*, %struct.ti_st** %4, align 8
  %62 = call i32 @dev_set_drvdata(i32* %60, %struct.ti_st* %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %56, %50, %20, %13
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.ti_st* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.ti_st*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ti_st*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
