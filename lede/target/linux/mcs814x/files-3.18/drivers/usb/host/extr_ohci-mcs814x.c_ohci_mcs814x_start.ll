; ModuleID = '/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ohci-mcs814x.c_ohci_mcs814x_start.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/mcs814x/files-3.18/drivers/usb/host/extr_ohci-mcs814x.c_ohci_mcs814x_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"can't start %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_mcs814x_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_mcs814x_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %6)
  store %struct.ohci_hcd* %7, %struct.ohci_hcd** %4, align 8
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %9 = call i32 @ohci_init(%struct.ohci_hcd* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %16 = call i32 @ohci_run(%struct.ohci_hcd* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %22 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ohci_err(%struct.ohci_hcd* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %27 = call i32 @ohci_stop(%struct.usb_hcd* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %30

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %19, %12
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_init(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*, i32) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
