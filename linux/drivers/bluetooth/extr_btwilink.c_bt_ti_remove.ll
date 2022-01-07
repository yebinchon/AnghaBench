; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_bt_ti_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btwilink.c_bt_ti_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hci_dev = type { i32 }
%struct.ti_st = type { %struct.hci_dev* }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bt_ti_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_ti_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.ti_st*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.ti_st* @dev_get_drvdata(i32* %7)
  store %struct.ti_st* %8, %struct.ti_st** %5, align 8
  %9 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %10 = icmp ne %struct.ti_st* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EFAULT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %16 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %15, i32 0, i32 0
  %17 = load %struct.hci_dev*, %struct.hci_dev** %16, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.ti_st*, %struct.ti_st** %5, align 8
  %22 = getelementptr inbounds %struct.ti_st, %struct.ti_st* %21, i32 0, i32 0
  %23 = load %struct.hci_dev*, %struct.hci_dev** %22, align 8
  store %struct.hci_dev* %23, %struct.hci_dev** %4, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %25 = call i32 @ti_st_close(%struct.hci_dev* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %27 = call i32 @hci_unregister_dev(%struct.hci_dev* %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = call i32 @hci_free_dev(%struct.hci_dev* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call i32 @dev_set_drvdata(i32* %31, i32* null)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %14, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.ti_st* @dev_get_drvdata(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @ti_st_close(%struct.hci_dev*) #1

declare dso_local i32 @hci_unregister_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
