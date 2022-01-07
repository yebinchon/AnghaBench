; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/rsxx/extr_core.c_rsxx_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rsxx_cardinfo = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Removing PCI-Flash SSD.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Shutdown failed!\0A\00", align 1
@CR_INTR_EVENT = common dso_local global i32 0, align 4
@CR_INTR_ALL = common dso_local global i32 0, align 4
@force_legacy = common dso_local global i32 0, align 4
@rsxx_disk_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @rsxx_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsxx_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.rsxx_cardinfo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.rsxx_cardinfo* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.rsxx_cardinfo* %8, %struct.rsxx_cardinfo** %3, align 8
  %9 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %10 = icmp ne %struct.rsxx_cardinfo* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %113

12:                                               ; preds = %1
  %13 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %14 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %13)
  %15 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %17 = call i32 @rsxx_detach_dev(%struct.rsxx_cardinfo* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %37, %12
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %21 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %26 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %25, i32 0, i32 5
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @CR_INTR_DMA(i32 %30)
  %32 = call i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %29, i32 %31)
  %33 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %34 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %33, i32 0, i32 5
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %42 = call i32 @card_shutdown(%struct.rsxx_cardinfo* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %47 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %46)
  %48 = call i32 @dev_crit(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %51 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %50, i32 0, i32 5
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %55 = load i32, i32* @CR_INTR_EVENT, align 4
  %56 = call i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %54, i32 %55)
  %57 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %58 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %57, i32 0, i32 5
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %62 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %61, i32 0, i32 6
  %63 = call i32 @cancel_work_sync(i32* %62)
  %64 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %65 = call i32 @rsxx_destroy_dev(%struct.rsxx_cardinfo* %64)
  %66 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %67 = call i32 @rsxx_dma_destroy(%struct.rsxx_cardinfo* %66)
  %68 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %69 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %68, i32 0, i32 5
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %69, i64 %70)
  %72 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %73 = load i32, i32* @CR_INTR_ALL, align 4
  %74 = call i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %72, i32 %73)
  %75 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %76 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %75, i32 0, i32 5
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %80 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %82 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @debugfs_remove_recursive(i32 %83)
  %85 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %89 = call i32 @free_irq(i32 %87, %struct.rsxx_cardinfo* %88)
  %90 = load i32, i32* @force_legacy, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %49
  %93 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %94 = call i32 @pci_disable_msi(%struct.pci_dev* %93)
  br label %95

95:                                               ; preds = %92, %49
  %96 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %97 = call i32 @rsxx_creg_destroy(%struct.rsxx_cardinfo* %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %99 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %100 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @pci_iounmap(%struct.pci_dev* %98, i32 %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %104 = call i32 @pci_disable_device(%struct.pci_dev* %103)
  %105 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %106 = call i32 @pci_release_regions(%struct.pci_dev* %105)
  %107 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %108 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ida_free(i32* @rsxx_disk_ida, i32 %109)
  %111 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %3, align 8
  %112 = call i32 @kfree(%struct.rsxx_cardinfo* %111)
  br label %113

113:                                              ; preds = %95, %11
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

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @rsxx_destroy_dev(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @rsxx_dma_destroy(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @free_irq(i32, %struct.rsxx_cardinfo*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @rsxx_creg_destroy(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @kfree(%struct.rsxx_cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
