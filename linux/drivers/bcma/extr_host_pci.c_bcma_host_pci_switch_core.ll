; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_switch_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_switch_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.bcma_device*, i32, i64 }

@BCMA_PCIE2_BAR0_WIN2 = common dso_local global i32 0, align 4
@BCMA_PCI_BAR0_WIN2 = common dso_local global i32 0, align 4
@BCMA_PCI_BAR0_WIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Switched to core: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*)* @bcma_host_pci_switch_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_host_pci_switch_core(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  %3 = alloca i32, align 4
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %5 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @BCMA_PCIE2_BAR0_WIN2, align 4
  br label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @BCMA_PCI_BAR0_WIN2, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %3, align 4
  %16 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %17 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BCMA_PCI_BAR0_WIN, align 4
  %22 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %23 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pci_write_config_dword(i32 %20, i32 %21, i32 %24)
  %26 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %27 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %33 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_write_config_dword(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %37 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %38 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.bcma_device* %36, %struct.bcma_device** %40, align 8
  %41 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %42 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %45 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bcma_debug(%struct.TYPE_4__* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  ret void
}

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @bcma_debug(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
