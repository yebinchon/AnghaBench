; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_clear_slot_attention.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_clear_slot_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.pci_slot* }
%struct.pci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hotplug_slot_ops* }
%struct.hotplug_slot_ops = type { i32 (%struct.TYPE_2__*, i32)* }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @eeh_clear_slot_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeh_clear_slot_attention(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.hotplug_slot_ops*, align 8
  %4 = alloca %struct.pci_slot*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = icmp ne %struct.pci_dev* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %49

8:                                                ; preds = %1
  %9 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %49

15:                                               ; preds = %8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.pci_slot*, %struct.pci_slot** %17, align 8
  store %struct.pci_slot* %18, %struct.pci_slot** %4, align 8
  %19 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %20 = icmp ne %struct.pci_slot* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %23 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %15
  br label %49

27:                                               ; preds = %21
  %28 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %29 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %31, align 8
  store %struct.hotplug_slot_ops* %32, %struct.hotplug_slot_ops** %3, align 8
  %33 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %3, align 8
  %34 = icmp ne %struct.hotplug_slot_ops* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %3, align 8
  %37 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.TYPE_2__*, i32)* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %27
  br label %49

41:                                               ; preds = %35
  %42 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %3, align 8
  %43 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %43, align 8
  %45 = load %struct.pci_slot*, %struct.pci_slot** %4, align 8
  %46 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = call i32 %44(%struct.TYPE_2__* %47, i32 0)
  br label %49

49:                                               ; preds = %41, %40, %26, %14, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
