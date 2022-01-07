; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci.c_zpci_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@resources = common dso_local global i32 0, align 4
@ZPCI_BUS_NR = common dso_local global i32 0, align 4
@pci_root_ops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_dev*)* @zpci_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpci_scan_bus(%struct.zpci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  %5 = load i32, i32* @resources, align 4
  %6 = call i32 @LIST_HEAD(i32 %5)
  %7 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %8 = call i32 @zpci_setup_bus_resources(%struct.zpci_dev* %7, i32* @resources)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* @ZPCI_BUS_NR, align 4
  %14 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %15 = call %struct.TYPE_3__* @pci_scan_root_bus(i32* null, i32 %13, i32* @pci_root_ops, %struct.zpci_dev* %14, i32* @resources)
  %16 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %16, i32 0, i32 0
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %37

25:                                               ; preds = %12
  %26 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i32 @pci_bus_add_devices(%struct.TYPE_3__* %35)
  store i32 0, i32* %2, align 4
  br label %42

37:                                               ; preds = %22, %11
  %38 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %39 = call i32 @zpci_cleanup_bus_resources(%struct.zpci_dev* %38)
  %40 = call i32 @pci_free_resource_list(i32* @resources)
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %25
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @zpci_setup_bus_resources(%struct.zpci_dev*, i32*) #1

declare dso_local %struct.TYPE_3__* @pci_scan_root_bus(i32*, i32, i32*, %struct.zpci_dev*, i32*) #1

declare dso_local i32 @pci_bus_add_devices(%struct.TYPE_3__*) #1

declare dso_local i32 @zpci_cleanup_bus_resources(%struct.zpci_dev*) #1

declare dso_local i32 @pci_free_resource_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
