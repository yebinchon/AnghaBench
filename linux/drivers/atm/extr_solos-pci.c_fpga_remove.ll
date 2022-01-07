; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_fpga_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_solos-pci.c_fpga_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.solos_card = type { i64, i64, i64, %struct.solos_card*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IRQ_EN_ADDR = common dso_local global i64 0, align 8
@FPGA_MODE = common dso_local global i64 0, align 8
@DMA_SUPPORTED = common dso_local global i64 0, align 8
@gpio_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @fpga_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.solos_card*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.solos_card* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.solos_card* %5, %struct.solos_card** %3, align 8
  %6 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %7 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IRQ_EN_ADDR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @iowrite32(i32 0, i64 %10)
  %12 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %13 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FPGA_MODE, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 1, i64 %16)
  %18 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %19 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FPGA_MODE, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  %24 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %25 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DMA_SUPPORTED, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %31 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @sysfs_remove_group(i32* %34, i32* @gpio_attr_group)
  br label %36

36:                                               ; preds = %29, %1
  %37 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %38 = call i32 @atm_remove(%struct.solos_card* %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.solos_card* %42)
  %44 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %45 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %44, i32 0, i32 4
  %46 = call i32 @tasklet_kill(i32* %45)
  %47 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %48 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %47, i32 0, i32 3
  %49 = load %struct.solos_card*, %struct.solos_card** %48, align 8
  %50 = call i32 @kfree(%struct.solos_card* %49)
  %51 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %52 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FPGA_MODE, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @iowrite32(i32 0, i64 %55)
  %57 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %58 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FPGA_MODE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @ioread32(i64 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %64 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %65 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pci_iounmap(%struct.pci_dev* %63, i64 %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %69 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %70 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pci_iounmap(%struct.pci_dev* %68, i64 %71)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %74 = call i32 @pci_release_regions(%struct.pci_dev* %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @pci_disable_device(%struct.pci_dev* %75)
  %77 = load %struct.solos_card*, %struct.solos_card** %3, align 8
  %78 = call i32 @kfree(%struct.solos_card* %77)
  ret void
}

declare dso_local %struct.solos_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @atm_remove(%struct.solos_card*) #1

declare dso_local i32 @free_irq(i32, %struct.solos_card*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @kfree(%struct.solos_card*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
