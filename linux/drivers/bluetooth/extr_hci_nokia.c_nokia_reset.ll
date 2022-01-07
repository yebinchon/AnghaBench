; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_nokia.c_nokia_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.nokia_bt_dev* }
%struct.nokia_bt_dev = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"reset: host wakeup not low!\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@INIT_BAUD_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"CTS not received: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @nokia_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_reset(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.nokia_bt_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %7 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %8 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %7, i32 0, i32 0
  %9 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %8, align 8
  store %struct.nokia_bt_dev* %9, %struct.nokia_bt_dev** %4, align 8
  %10 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %11 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @gpiod_set_value_cansleep(i32 %16, i32 1)
  %18 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @gpiod_set_value_cansleep(i32 %20, i32 1)
  %22 = call i32 @msleep(i32 100)
  %23 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %24 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_get_value_cansleep(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EPROTO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %1
  %35 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %36 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = call i32 @serdev_device_write_flush(%struct.TYPE_5__* %37)
  %39 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %40 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @nokia_flow_control(%struct.TYPE_5__* %41, i32 0)
  %43 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %44 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* @INIT_BAUD_RATE, align 4
  %47 = call i32 @serdev_device_set_baudrate(%struct.TYPE_5__* %45, i32 %46)
  %48 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %49 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @gpiod_set_value_cansleep(i32 %50, i32 0)
  %52 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %53 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = call i32 @serdev_device_wait_for_cts(%struct.TYPE_5__* %54, i32 1, i32 200)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %34
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %68

63:                                               ; preds = %34
  %64 = load %struct.nokia_bt_dev*, %struct.nokia_bt_dev** %4, align 8
  %65 = getelementptr inbounds %struct.nokia_bt_dev, %struct.nokia_bt_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = call i32 @nokia_flow_control(%struct.TYPE_5__* %66, i32 1)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %63, %58, %29
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @serdev_device_write_flush(%struct.TYPE_5__*) #1

declare dso_local i32 @nokia_flow_control(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serdev_device_set_baudrate(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @serdev_device_wait_for_cts(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
