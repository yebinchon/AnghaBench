; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_provide_access_to_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_host_pci.c_bcma_host_pci_provide_access_to_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.bcma_device* }
%struct.TYPE_3__ = type { i32 }

@BCMA_CORE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_device*)* @bcma_host_pci_provide_access_to_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_host_pci_provide_access_to_core(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %5 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @BCMA_CORE_SIZE, align 4
  %10 = mul nsw i32 3, %9
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @BCMA_CORE_SIZE, align 4
  %13 = mul nsw i32 2, %12
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %16 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.bcma_device*, %struct.bcma_device** %18, align 8
  %20 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %21 = icmp ne %struct.bcma_device* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %24 = call i32 @bcma_host_pci_switch_core(%struct.bcma_device* %23)
  br label %25

25:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %11, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @bcma_host_pci_switch_core(%struct.bcma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
