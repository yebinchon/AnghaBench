; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_npu_disable_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_pci-ioda.c_pnv_npu_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.eeh_pe*, i32)* }
%struct.eeh_pe = type { i32 }
%struct.pci_dev = type { i32 }
%struct.eeh_dev = type { %struct.eeh_pe* }

@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EEH_RESET_HOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pnv_npu_disable_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_npu_disable_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.eeh_dev*, align 8
  %4 = alloca %struct.eeh_pe*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev* %5)
  store %struct.eeh_dev* %6, %struct.eeh_dev** %3, align 8
  %7 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %8 = icmp ne %struct.eeh_dev* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.eeh_dev*, %struct.eeh_dev** %3, align 8
  %11 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %10, i32 0, i32 0
  %12 = load %struct.eeh_pe*, %struct.eeh_pe** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi %struct.eeh_pe* [ %12, %9 ], [ null, %13 ]
  store %struct.eeh_pe* %15, %struct.eeh_pe** %4, align 8
  %16 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %17 = icmp ne %struct.eeh_pe* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.eeh_pe*, i32)*, i32 (%struct.eeh_pe*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.eeh_pe*, i32)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.eeh_pe*, i32)*, i32 (%struct.eeh_pe*, i32)** %28, align 8
  %30 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %31 = load i32, i32* @EEH_RESET_HOT, align 4
  %32 = call i32 %29(%struct.eeh_pe* %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %21, %18, %14
  ret void
}

declare dso_local %struct.eeh_dev* @pci_dev_to_eeh_dev(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
