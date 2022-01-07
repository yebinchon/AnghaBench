; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_change_baudrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_change_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { i32, i32, i32 }
%struct.btmtk_hci_wmt_params = type { i32, i32, i32*, i32*, i32 }

@MTK_WMT_HIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to device baudrate (%d)\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set up host baudrate (%d)\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@MTK_WMT_TEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to test new baudrate (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtkuart_change_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_change_baudrate(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtkuart_dev*, align 8
  %5 = alloca %struct.btmtk_hci_wmt_params, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %9)
  store %struct.btmtkuart_dev* %10, %struct.btmtkuart_dev** %4, align 8
  %11 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %12 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @MTK_WMT_HIF, align 4
  %16 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 4, i32* %18, align 4
  %19 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* %6, i32** %19, align 8
  %20 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %21, %struct.btmtk_hci_wmt_params* %5)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @bt_dev_err(%struct.hci_dev* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %90

30:                                               ; preds = %1
  %31 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %32 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %35 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @serdev_device_set_baudrate(i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %30
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @bt_dev_err(%struct.hci_dev* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %90

45:                                               ; preds = %30
  %46 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %47 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @serdev_device_set_flow_control(i32 %48, i32 0)
  store i32 255, i32* %7, align 4
  %50 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %51 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %54 = call i32 @serdev_device_write(i32 %52, i32* %7, i32 4, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 4
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %45
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %90

63:                                               ; preds = %57
  %64 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %65 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @serdev_device_wait_until_sent(i32 %66, i32 0)
  %68 = call i32 @usleep_range(i32 20000, i32 22000)
  %69 = load i32, i32* @MTK_WMT_TEST, align 4
  %70 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 0
  store i32 7, i32* %71, align 8
  %72 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = getelementptr inbounds %struct.btmtk_hci_wmt_params, %struct.btmtk_hci_wmt_params* %5, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = call i32 @mtk_hci_wmt_sync(%struct.hci_dev* %75, %struct.btmtk_hci_wmt_params* %5)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @bt_dev_err(%struct.hci_dev* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %2, align 4
  br label %90

84:                                               ; preds = %63
  %85 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %86 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %89 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %79, %61, %40, %25
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mtk_hci_wmt_sync(%struct.hci_dev*, %struct.btmtk_hci_wmt_params*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @serdev_device_set_baudrate(i32, i32) #1

declare dso_local i32 @serdev_device_set_flow_control(i32, i32) #1

declare dso_local i32 @serdev_device_write(i32, i32*, i32, i32) #1

declare dso_local i32 @serdev_device_wait_until_sent(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
