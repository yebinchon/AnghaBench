; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pci_acpi_scan_root.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/pci/extr_pci.c_pci_acpi_scan_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }
%struct.acpi_pci_root = type { i32, %struct.TYPE_3__, %struct.acpi_device* }
%struct.TYPE_3__ = type { i64 }
%struct.acpi_device = type { i32, i32 }
%struct.pci_root_info = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.acpi_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"pci_bus %04x:%02x: ignored (out of memory)\0A\00", align 1
@pci_acpi_root_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_bus* @pci_acpi_scan_root(%struct.acpi_pci_root* %0) #0 {
  %2 = alloca %struct.pci_bus*, align 8
  %3 = alloca %struct.acpi_pci_root*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.pci_root_info*, align 8
  store %struct.acpi_pci_root* %0, %struct.acpi_pci_root** %3, align 8
  %6 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %6, i32 0, i32 2
  %8 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  store %struct.acpi_device* %8, %struct.acpi_device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pci_root_info* @kzalloc(i32 32, i32 %9)
  store %struct.pci_root_info* %10, %struct.pci_root_info** %5, align 8
  %11 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %12 = icmp ne %struct.pci_root_info* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1
  %16 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %17 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  store %struct.pci_bus* null, %struct.pci_bus** %2, align 8
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_pci_root, %struct.acpi_pci_root* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %30 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %33 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %34 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store %struct.acpi_device* %32, %struct.acpi_device** %35, align 8
  %36 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_get_node(i32 %38)
  %40 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %41 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %44 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.acpi_pci_root*, %struct.acpi_pci_root** %3, align 8
  %47 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %48 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %47, i32 0, i32 1
  %49 = load %struct.pci_root_info*, %struct.pci_root_info** %5, align 8
  %50 = getelementptr inbounds %struct.pci_root_info, %struct.pci_root_info* %49, i32 0, i32 0
  %51 = call %struct.pci_bus* @acpi_pci_root_create(%struct.acpi_pci_root* %46, i32* @pci_acpi_root_ops, i32* %48, %struct.TYPE_4__* %50)
  store %struct.pci_bus* %51, %struct.pci_bus** %2, align 8
  br label %52

52:                                               ; preds = %25, %13
  %53 = load %struct.pci_bus*, %struct.pci_bus** %2, align 8
  ret %struct.pci_bus* %53
}

declare dso_local %struct.pci_root_info* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @acpi_get_node(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.pci_bus* @acpi_pci_root_create(%struct.acpi_pci_root*, i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
