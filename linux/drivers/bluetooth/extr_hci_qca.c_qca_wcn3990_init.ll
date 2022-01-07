; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_wcn3990_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_qca.c_qca_wcn3990_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { i32, i32 }
%struct.qca_serdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"failed to open port\00", align 1
@QCA_INIT_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_uart*)* @qca_wcn3990_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca_wcn3990_init(%struct.hci_uart* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_uart*, align 8
  %4 = alloca %struct.qca_serdev*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_uart* %0, %struct.hci_uart** %3, align 8
  %6 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %7 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.qca_serdev* @serdev_device_get_drvdata(i32 %8)
  store %struct.qca_serdev* %9, %struct.qca_serdev** %4, align 8
  %10 = load %struct.qca_serdev*, %struct.qca_serdev** %4, align 8
  %11 = getelementptr inbounds %struct.qca_serdev, %struct.qca_serdev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %1
  %17 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %18 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @serdev_device_close(i32 %19)
  %21 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %22 = call i32 @qca_power_setup(%struct.hci_uart* %21, i32 1)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %80

27:                                               ; preds = %16
  %28 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %29 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @serdev_device_open(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %36 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bt_dev_err(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %80

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %43 = call i32 @host_set_baudrate(%struct.hci_uart* %42, i32 2400)
  %44 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %45 = call i32 @qca_send_power_pulse(%struct.hci_uart* %44, i32 0)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %80

50:                                               ; preds = %41
  %51 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %52 = load i32, i32* @QCA_INIT_SPEED, align 4
  %53 = call i32 @qca_set_speed(%struct.hci_uart* %51, i32 %52)
  %54 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %55 = call i32 @qca_send_power_pulse(%struct.hci_uart* %54, i32 1)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %80

60:                                               ; preds = %50
  %61 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %62 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @serdev_device_close(i32 %63)
  %65 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %66 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @serdev_device_open(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %73 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bt_dev_err(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.hci_uart*, %struct.hci_uart** %3, align 8
  %79 = call i32 @hci_uart_set_flow_control(%struct.hci_uart* %78, i32 0)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %71, %58, %48, %34, %25
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.qca_serdev* @serdev_device_get_drvdata(i32) #1

declare dso_local i32 @serdev_device_close(i32) #1

declare dso_local i32 @qca_power_setup(%struct.hci_uart*, i32) #1

declare dso_local i32 @serdev_device_open(i32) #1

declare dso_local i32 @bt_dev_err(i32, i8*) #1

declare dso_local i32 @host_set_baudrate(%struct.hci_uart*, i32) #1

declare dso_local i32 @qca_send_power_pulse(%struct.hci_uart*, i32) #1

declare dso_local i32 @qca_set_speed(%struct.hci_uart*, i32) #1

declare dso_local i32 @hci_uart_set_flow_control(%struct.hci_uart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
