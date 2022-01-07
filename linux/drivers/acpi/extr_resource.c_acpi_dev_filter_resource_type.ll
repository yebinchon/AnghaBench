; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_filter_resource_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_filter_resource_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IORESOURCE_MEM = common dso_local global i64 0, align 8
@IORESOURCE_IO = common dso_local global i64 0, align 8
@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@IORESOURCE_DMA = common dso_local global i64 0, align 8
@IORESOURCE_REG = common dso_local global i64 0, align 8
@ACPI_MEMORY_RANGE = common dso_local global i32 0, align 4
@ACPI_IO_RANGE = common dso_local global i32 0, align 4
@ACPI_BUS_NUMBER_RANGE = common dso_local global i32 0, align 4
@IORESOURCE_BUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_filter_resource_type(%struct.acpi_resource* %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %52 [
    i32 129, label %9
    i32 128, label %9
    i32 133, label %9
    i32 131, label %11
    i32 134, label %11
    i32 130, label %13
    i32 136, label %13
    i32 138, label %15
    i32 135, label %15
    i32 132, label %17
    i32 141, label %19
    i32 140, label %19
    i32 139, label %19
    i32 137, label %19
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i64, i64* @IORESOURCE_MEM, align 8
  store i64 %10, i64* %5, align 8
  br label %53

11:                                               ; preds = %2, %2
  %12 = load i64, i64* @IORESOURCE_IO, align 8
  store i64 %12, i64* %5, align 8
  br label %53

13:                                               ; preds = %2, %2
  %14 = load i64, i64* @IORESOURCE_IRQ, align 8
  store i64 %14, i64* %5, align 8
  br label %53

15:                                               ; preds = %2, %2
  %16 = load i64, i64* @IORESOURCE_DMA, align 8
  store i64 %16, i64* %5, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load i64, i64* @IORESOURCE_REG, align 8
  store i64 %18, i64* %5, align 8
  br label %53

19:                                               ; preds = %2, %2, %2, %2
  %20 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_MEMORY_RANGE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @IORESOURCE_MEM, align 8
  store i64 %28, i64* %5, align 8
  br label %51

29:                                               ; preds = %19
  %30 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ACPI_IO_RANGE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* @IORESOURCE_IO, align 8
  store i64 %38, i64* %5, align 8
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.acpi_resource*, %struct.acpi_resource** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACPI_BUS_NUMBER_RANGE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i64, i64* @IORESOURCE_BUS, align 8
  store i64 %48, i64* %5, align 8
  br label %49

49:                                               ; preds = %47, %39
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50, %27
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %51, %17, %15, %13, %11, %9
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %4, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
