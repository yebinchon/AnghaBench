; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_ioresource_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_ioresource_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@IORESOURCE_UNSET = common dso_local global i32 0, align 4
@ACPI_DECODE_16 = common dso_local global i64 0, align 8
@IORESOURCE_IO_16BIT_ADDR = common dso_local global i32 0, align 4
@ACPI_SPARSE_TRANSLATION = common dso_local global i64 0, align 8
@IORESOURCE_IO_SPARSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.resource*, i32, i64, i64)* @acpi_dev_ioresource_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dev_ioresource_flags(%struct.resource* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.resource* %0, %struct.resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @IORESOURCE_IO, align 4
  %10 = load %struct.resource*, %struct.resource** %5, align 8
  %11 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.resource*, %struct.resource** %5, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @acpi_dev_resource_len_valid(i32 %14, i32 %17, i32 %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %23 = load i32, i32* @IORESOURCE_UNSET, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %21, %4
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = call i32 @acpi_iospace_resource_valid(%struct.resource* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %35 = load i32, i32* @IORESOURCE_UNSET, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %29
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @ACPI_DECODE_16, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @IORESOURCE_IO_16BIT_ADDR, align 4
  %47 = load %struct.resource*, %struct.resource** %5, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @ACPI_SPARSE_TRANSLATION, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* @IORESOURCE_IO_SPARSE, align 4
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @acpi_dev_resource_len_valid(i32, i32, i32, i32) #1

declare dso_local i32 @acpi_iospace_resource_valid(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
