; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_eni.c_eni_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.atm_dev = type { i32 }
%struct.eni_dev = type { %struct.eni_zero }
%struct.eni_zero = type { i32, i32 }

@ENI_ZEROES_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @eni_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eni_remove_one(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.eni_dev*, align 8
  %5 = alloca %struct.eni_zero*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.atm_dev* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.atm_dev* %7, %struct.atm_dev** %3, align 8
  %8 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %9 = call %struct.eni_dev* @ENI_DEV(%struct.atm_dev* %8)
  store %struct.eni_dev* %9, %struct.eni_dev** %4, align 8
  %10 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %11 = getelementptr inbounds %struct.eni_dev, %struct.eni_dev* %10, i32 0, i32 0
  store %struct.eni_zero* %11, %struct.eni_zero** %5, align 8
  %12 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %13 = call i32 @eni_do_release(%struct.atm_dev* %12)
  %14 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %15 = call i32 @atm_dev_deregister(%struct.atm_dev* %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* @ENI_ZEROES_SIZE, align 4
  %19 = load %struct.eni_zero*, %struct.eni_zero** %5, align 8
  %20 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.eni_zero*, %struct.eni_zero** %5, align 8
  %23 = getelementptr inbounds %struct.eni_zero, %struct.eni_zero* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dma_free_coherent(i32* %17, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.eni_dev*, %struct.eni_dev** %4, align 8
  %27 = call i32 @kfree(%struct.eni_dev* %26)
  %28 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %29 = call i32 @pci_disable_device(%struct.pci_dev* %28)
  ret void
}

declare dso_local %struct.atm_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.eni_dev* @ENI_DEV(%struct.atm_dev*) #1

declare dso_local i32 @eni_do_release(%struct.atm_dev*) #1

declare dso_local i32 @atm_dev_deregister(%struct.atm_dev*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.eni_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
