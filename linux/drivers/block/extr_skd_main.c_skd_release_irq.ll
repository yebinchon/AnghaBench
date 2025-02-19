; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_release_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_skd_main.c_skd_release_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skd_device = type { i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i32 }

@SKD_MAX_MSIX_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skd_device*)* @skd_release_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skd_release_irq(%struct.skd_device* %0) #0 {
  %2 = alloca %struct.skd_device*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.skd_device* %0, %struct.skd_device** %2, align 8
  %5 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %6 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %5, i32 0, i32 1
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %9 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SKD_MAX_MSIX_COUNT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @pci_irq_vector(%struct.pci_dev* %20, i32 %21)
  %23 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %24 = call i32 @devm_free_irq(i32* %19, i32 %22, %struct.skd_device* %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %30 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %34 = getelementptr inbounds %struct.skd_device, %struct.skd_device* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 1
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.skd_device*, %struct.skd_device** %2, align 8
  %42 = call i32 @devm_free_irq(i32* %37, i32 %40, %struct.skd_device* %41)
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %44)
  ret void
}

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.skd_device*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
