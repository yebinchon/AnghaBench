; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_find_prt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_irq.c_acpi_pci_irq_find_prt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_prt_entry = type { i32 }
%struct.acpi_buffer = type { %struct.acpi_pci_routing_table*, i32*, i32 }
%struct.acpi_pci_routing_table = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, %struct.acpi_prt_entry**)* @acpi_pci_irq_find_prt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pci_irq_find_prt_entry(%struct.pci_dev* %0, i32 %1, %struct.acpi_prt_entry** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_prt_entry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %struct.acpi_pci_routing_table*, align 8
  %11 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.acpi_prt_entry** %2, %struct.acpi_prt_entry*** %7, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %13 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.acpi_pci_routing_table*
  store %struct.acpi_pci_routing_table* %15, %struct.acpi_pci_routing_table** %12, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 2
  store i32 0, i32* %17, align 8
  store i32* null, i32** %11, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32* @ACPI_HANDLE(i64 %29)
  store i32* %30, i32** %11, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %83

37:                                               ; preds = %31
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @acpi_get_irq_routing_table(i32* %38, %struct.acpi_buffer* %9)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %45 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %44, align 8
  %46 = call i32 @kfree(%struct.acpi_pci_routing_table* %45)
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %83

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %51 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %50, align 8
  store %struct.acpi_pci_routing_table* %51, %struct.acpi_pci_routing_table** %10, align 8
  br label %52

52:                                               ; preds = %71, %49
  %53 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %54 = icmp ne %struct.acpi_pci_routing_table* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %57 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %79

62:                                               ; preds = %60
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %67 = load %struct.acpi_prt_entry**, %struct.acpi_prt_entry*** %7, align 8
  %68 = call i32 @acpi_pci_irq_check_entry(i32* %63, %struct.pci_dev* %64, i32 %65, %struct.acpi_pci_routing_table* %66, %struct.acpi_prt_entry** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %79

71:                                               ; preds = %62
  %72 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %73 = ptrtoint %struct.acpi_pci_routing_table* %72 to i64
  %74 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %10, align 8
  %75 = getelementptr inbounds %struct.acpi_pci_routing_table, %struct.acpi_pci_routing_table* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %73, %76
  %78 = inttoptr i64 %77 to %struct.acpi_pci_routing_table*
  store %struct.acpi_pci_routing_table* %78, %struct.acpi_pci_routing_table** %10, align 8
  br label %52

79:                                               ; preds = %70, %60
  %80 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %81 = load %struct.acpi_pci_routing_table*, %struct.acpi_pci_routing_table** %80, align 8
  %82 = call i32 @kfree(%struct.acpi_pci_routing_table* %81)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %43, %34
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32* @ACPI_HANDLE(i64) #1

declare dso_local i32 @acpi_get_irq_routing_table(i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%struct.acpi_pci_routing_table*) #1

declare dso_local i32 @acpi_pci_irq_check_entry(i32*, %struct.pci_dev*, i32, %struct.acpi_pci_routing_table*, %struct.acpi_prt_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
