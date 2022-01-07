; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_check_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_check_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_pci_routing_table = type { i32, i32, i64*, i32 }
%struct.acpi_prt_entry = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"      %04x:%02x:%02x[%c] -> %s[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pci_dev*, i32, %struct.acpi_pci_routing_table*, %struct.acpi_prt_entry**)* @acpi_pci_irq_check_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_irq_check_entry(i32 %0, %struct.pci_dev* %1, i32 %2, %struct.acpi_pci_routing_table* %3, %struct.acpi_prt_entry** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_pci_routing_table*, align 8
  %11 = alloca %struct.acpi_prt_entry**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.acpi_prt_entry*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.pci_dev* %1, %struct.pci_dev** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.acpi_pci_routing_table* %3, %struct.acpi_pci_routing_table** %10, align 8
  store %struct.acpi_prt_entry** %4, %struct.acpi_prt_entry*** %11, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @pci_domain_nr(%struct.TYPE_5__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i64 @pci_ari_enabled(%struct.TYPE_5__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  br label %36

31:                                               ; preds = %5
  %32 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PCI_SLOT(i32 %34)
  br label %36

36:                                               ; preds = %31, %30
  %37 = phi i32 [ 0, %30 ], [ %35, %31 ]
  store i32 %37, i32* %14, align 4
  %38 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %39 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 65535
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %47 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45, %36
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %135

55:                                               ; preds = %45
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.acpi_prt_entry* @kzalloc(i32 24, i32 %56)
  store %struct.acpi_prt_entry* %57, %struct.acpi_prt_entry** %15, align 8
  %58 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %59 = icmp ne %struct.acpi_prt_entry* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %135

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %66 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %70 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %73 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 16
  %76 = and i32 %75, 65535
  %77 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %78 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 4
  %80 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %81 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %85 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %87 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %88 = call i32 @do_prt_fixups(%struct.acpi_prt_entry* %86, %struct.acpi_pci_routing_table* %87)
  %89 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %90 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %93 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %95 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %63
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %103 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %102, i32 0, i32 2
  %104 = load i64*, i64** %103, align 8
  %105 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %106 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %105, i32 0, i32 3
  %107 = call i32 @acpi_get_handle(i32 %101, i64* %104, i32* %106)
  br label %108

108:                                              ; preds = %100, %63
  %109 = load i32, i32* @ACPI_DB_INFO, align 4
  %110 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %111 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %115 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %119 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %123 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @pin_name(i32 %124)
  %126 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %127 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %130 = getelementptr inbounds %struct.acpi_prt_entry, %struct.acpi_prt_entry* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %131)
  %133 = load %struct.acpi_prt_entry*, %struct.acpi_prt_entry** %15, align 8
  %134 = load %struct.acpi_prt_entry**, %struct.acpi_prt_entry*** %11, align 8
  store %struct.acpi_prt_entry* %133, %struct.acpi_prt_entry** %134, align 8
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %108, %60, %52
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local i32 @pci_domain_nr(%struct.TYPE_5__*) #1

declare dso_local i64 @pci_ari_enabled(%struct.TYPE_5__*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local %struct.acpi_prt_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @do_prt_fixups(%struct.acpi_prt_entry*, %struct.acpi_pci_routing_table*) #1

declare dso_local i32 @acpi_get_handle(i32, i64*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @pin_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
