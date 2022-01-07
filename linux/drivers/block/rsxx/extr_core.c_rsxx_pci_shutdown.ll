; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_pci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_pci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_cardinfo = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Shutting down PCI-Flash SSD.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rsxx_pci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_pci_shutdown(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.rsxx_cardinfo* %7, %struct.rsxx_cardinfo** %3, align 8
  %8 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %9 = icmp ne %struct.rsxx_cardinfo* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %13 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %12)
  %14 = call i32 @dev_info(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %16 = call i32 @rsxx_detach_dev(%struct.rsxx_cardinfo* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %36, %11
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %20 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %25 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %24, i32 0, i32 1
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @CR_INTR_DMA(i32 %29)
  %31 = call i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %28, i32 %30)
  %32 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %33 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %32, i32 0, i32 1
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %36

36:                                               ; preds = %23
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %41 = call i32 @card_shutdown(%struct.rsxx_cardinfo* %40)
  br label %42

42:                                               ; preds = %39, %10
  ret void
}

declare dso_local %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_detach_dev(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo*, i32) #1

declare dso_local i32 @CR_INTR_DMA(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @card_shutdown(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
