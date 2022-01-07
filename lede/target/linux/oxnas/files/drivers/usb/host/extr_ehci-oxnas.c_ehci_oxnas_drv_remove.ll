; ModuleID = '/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_ehci_oxnas_drv_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/oxnas/files/drivers/usb/host/extr_ehci-oxnas.c_ehci_oxnas_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.oxnas_hcd = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_oxnas_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_oxnas_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.oxnas_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.usb_hcd* %6, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.TYPE_2__* @hcd_to_ehci(%struct.usb_hcd* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.oxnas_hcd*
  store %struct.oxnas_hcd* %11, %struct.oxnas_hcd** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call i32 @usb_remove_hcd(%struct.usb_hcd* %12)
  %14 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_disable_unprepare(i32 %21)
  %23 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %24 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @clk_put(i32 %25)
  %27 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  %31 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %32 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_put(i32 %33)
  br label %35

35:                                               ; preds = %18, %1
  %36 = load %struct.oxnas_hcd*, %struct.oxnas_hcd** %4, align 8
  %37 = getelementptr inbounds %struct.oxnas_hcd, %struct.oxnas_hcd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @clk_disable_unprepare(i32 %38)
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = call i32 @usb_put_hcd(%struct.usb_hcd* %40)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.TYPE_2__* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
