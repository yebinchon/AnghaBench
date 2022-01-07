; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_enable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_enable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32 }

@ZPCI_NR_DMA_SPACES = common dso_local global i32 0, align 4
@ZPCI_FN_STATE_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpci_enable_device(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %5 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %6 = load i32, i32* @ZPCI_NR_DMA_SPACES, align 4
  %7 = call i32 @clp_enable_fh(%struct.zpci_dev* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %13 = call i32 @zpci_dma_init_device(%struct.zpci_dev* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %11
  %18 = load i32, i32* @ZPCI_FN_STATE_ONLINE, align 4
  %19 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %26

21:                                               ; preds = %16
  %22 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %23 = call i32 @clp_disable_fh(%struct.zpci_dev* %22)
  br label %24

24:                                               ; preds = %21, %10
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @clp_enable_fh(%struct.zpci_dev*, i32) #1

declare dso_local i32 @zpci_dma_init_device(%struct.zpci_dev*) #1

declare dso_local i32 @clp_disable_fh(%struct.zpci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
