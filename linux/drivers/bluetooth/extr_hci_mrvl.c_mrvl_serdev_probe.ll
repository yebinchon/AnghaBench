; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_serdev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_mrvl.c_mrvl_serdev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serdev_device = type { i32 }
%struct.mrvl_serdev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.serdev_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mrvl_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serdev_device*)* @mrvl_serdev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrvl_serdev_probe(%struct.serdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.serdev_device*, align 8
  %4 = alloca %struct.mrvl_serdev*, align 8
  store %struct.serdev_device* %0, %struct.serdev_device** %3, align 8
  %5 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %6 = getelementptr inbounds %struct.serdev_device, %struct.serdev_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mrvl_serdev* @devm_kzalloc(i32* %6, i32 8, i32 %7)
  store %struct.mrvl_serdev* %8, %struct.mrvl_serdev** %4, align 8
  %9 = load %struct.mrvl_serdev*, %struct.mrvl_serdev** %4, align 8
  %10 = icmp ne %struct.mrvl_serdev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %16 = load %struct.mrvl_serdev*, %struct.mrvl_serdev** %4, align 8
  %17 = getelementptr inbounds %struct.mrvl_serdev, %struct.mrvl_serdev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.serdev_device* %15, %struct.serdev_device** %18, align 8
  %19 = load %struct.serdev_device*, %struct.serdev_device** %3, align 8
  %20 = load %struct.mrvl_serdev*, %struct.mrvl_serdev** %4, align 8
  %21 = call i32 @serdev_device_set_drvdata(%struct.serdev_device* %19, %struct.mrvl_serdev* %20)
  %22 = load %struct.mrvl_serdev*, %struct.mrvl_serdev** %4, align 8
  %23 = getelementptr inbounds %struct.mrvl_serdev, %struct.mrvl_serdev* %22, i32 0, i32 0
  %24 = call i32 @hci_uart_register_device(%struct.TYPE_2__* %23, i32* @mrvl_proto)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.mrvl_serdev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @serdev_device_set_drvdata(%struct.serdev_device*, %struct.mrvl_serdev*) #1

declare dso_local i32 @hci_uart_register_device(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
