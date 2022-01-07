; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_slot_presence_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_slot_presence_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, %struct.pci_slot* }
%struct.pci_slot = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hotplug_slot_ops* }
%struct.hotplug_slot_ops = type { i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32)* }

@pci_channel_io_perm_failure = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @eeh_slot_presence_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeh_slot_presence_check(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hotplug_slot_ops*, align 8
  %5 = alloca %struct.pci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = icmp ne %struct.pci_dev* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @pci_channel_io_perm_failure, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = load %struct.pci_slot*, %struct.pci_slot** %20, align 8
  store %struct.pci_slot* %21, %struct.pci_slot** %5, align 8
  %22 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %23 = icmp ne %struct.pci_slot* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %26 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %18
  store i32 1, i32* %2, align 4
  br label %74

30:                                               ; preds = %24
  %31 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %32 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %34, align 8
  store %struct.hotplug_slot_ops* %35, %struct.hotplug_slot_ops** %4, align 8
  %36 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %37 = icmp ne %struct.hotplug_slot_ops* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %40 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_3__*, i32*)* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %30
  store i32 1, i32* %2, align 4
  br label %74

44:                                               ; preds = %38
  %45 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %46 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %45, i32 0, i32 1
  %47 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_3__*, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %51 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** %51, align 8
  %53 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %54 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_3__* %55, i32 1)
  br label %57

57:                                               ; preds = %49, %44
  %58 = load %struct.hotplug_slot_ops*, %struct.hotplug_slot_ops** %4, align 8
  %59 = getelementptr inbounds %struct.hotplug_slot_ops, %struct.hotplug_slot_ops* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_3__*, i32*)*, i32 (%struct.TYPE_3__*, i32*)** %59, align 8
  %61 = load %struct.pci_slot*, %struct.pci_slot** %5, align 8
  %62 = getelementptr inbounds %struct.pci_slot, %struct.pci_slot* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = call i32 %60(%struct.TYPE_3__* %63, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %74

68:                                               ; preds = %57
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %67, %43, %29, %17, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
