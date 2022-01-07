; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btmtkuart.c_btmtkuart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.btmtkuart_dev = type { i32, i32, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Unable to open UART device %s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to set baudrate UART device %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btmtkuart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmtkuart_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btmtkuart_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = call %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev* %7)
  store %struct.btmtkuart_dev* %8, %struct.btmtkuart_dev** %4, align 8
  %9 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %10 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call i32 @serdev_device_open(%struct.TYPE_5__* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %17 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %18 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @dev_name(%struct.device* %20)
  %22 = call i32 @bt_dev_err(%struct.hci_dev* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %102

23:                                               ; preds = %1
  %24 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %25 = call i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %29 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %32 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %37 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @serdev_device_set_baudrate(%struct.TYPE_5__* %38, i32 115200)
  store i32 %39, i32* %6, align 4
  br label %48

40:                                               ; preds = %27
  %41 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %42 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %45 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @serdev_device_set_baudrate(%struct.TYPE_5__* %43, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %54 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @dev_name(%struct.device* %56)
  %58 = call i32 @bt_dev_err(%struct.hci_dev* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %97

59:                                               ; preds = %48
  %60 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %61 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @serdev_device_set_flow_control(%struct.TYPE_5__* %62, i32 0)
  br label %64

64:                                               ; preds = %59, %23
  %65 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %66 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %65, i32 0, i32 2
  store i32 2, i32* %66, align 8
  %67 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %68 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %70 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store %struct.device* %72, %struct.device** %5, align 8
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @pm_runtime_enable(%struct.device* %73)
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = call i32 @pm_runtime_get_sync(%struct.device* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %64
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 @pm_runtime_put_noidle(%struct.device* %80)
  br label %94

82:                                               ; preds = %64
  %83 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %84 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @clk_prepare_enable(i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %104

91:                                               ; preds = %89
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = call i32 @pm_runtime_put_sync(%struct.device* %92)
  br label %94

94:                                               ; preds = %91, %79
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @pm_runtime_disable(%struct.device* %95)
  br label %97

97:                                               ; preds = %94, %51
  %98 = load %struct.btmtkuart_dev*, %struct.btmtkuart_dev** %4, align 8
  %99 = getelementptr inbounds %struct.btmtkuart_dev, %struct.btmtkuart_dev* %98, i32 0, i32 3
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = call i32 @serdev_device_close(%struct.TYPE_5__* %100)
  br label %102

102:                                              ; preds = %97, %15
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %90
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.btmtkuart_dev* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @serdev_device_open(%struct.TYPE_5__*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @btmtkuart_is_standalone(%struct.btmtkuart_dev*) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serdev_device_set_flow_control(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @serdev_device_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
