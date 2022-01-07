; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_setup_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/pci/extr_sta2x11-fixup.c_sta2x11_setup_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sta2x11_instance = type { i32 }

@STA2X11_AMBA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @sta2x11_setup_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta2x11_setup_pdev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.sta2x11_instance*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.sta2x11_instance* @sta2x11_pdev_to_instance(%struct.pci_dev* %4)
  store %struct.sta2x11_instance* %5, %struct.sta2x11_instance** %3, align 8
  %6 = load %struct.sta2x11_instance*, %struct.sta2x11_instance** %3, align 8
  %7 = icmp ne %struct.sta2x11_instance* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i64, i64* @STA2X11_AMBA_SIZE, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %10, i64 %12)
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i64, i64* @STA2X11_AMBA_SIZE, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i32 @pci_set_dma_mask(%struct.pci_dev* %14, i64 %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %23 = call i32 @pci_set_master(%struct.pci_dev* %22)
  br label %24

24:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.sta2x11_instance* @sta2x11_pdev_to_instance(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
