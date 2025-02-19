; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ehci-mcs814x.c_mcs814x_ehci_remove.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ehci-mcs814x.c_mcs814x_ehci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mcs814x_ehci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs814x_ehci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.usb_hcd* %5, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call i32 @usb_remove_hcd(%struct.usb_hcd* %6)
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iounmap(i32 %10)
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @release_mem_region(i32 %14, i32 %17)
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = call i32 @usb_put_hcd(%struct.usb_hcd* %19)
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
