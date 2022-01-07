; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_fixed_io, %struct.acpi_resource_io }
%struct.acpi_resource_fixed_io = type { i32, i32 }
%struct.acpi_resource_io = type { i32, i32, i32 }
%struct.resource = type { i32 }

@ACPI_DECODE_10 = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_resource_io(%struct.acpi_resource* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.acpi_resource_io*, align 8
  %7 = alloca %struct.acpi_resource_fixed_io*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  %8 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 129, label %26
  ]

11:                                               ; preds = %2
  %12 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.acpi_resource_io* %14, %struct.acpi_resource_io** %6, align 8
  %15 = load %struct.resource*, %struct.resource** %5, align 8
  %16 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %6, align 8
  %17 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acpi_resource_io*, %struct.acpi_resource_io** %6, align 8
  %23 = getelementptr inbounds %struct.acpi_resource_io, %struct.acpi_resource_io* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @acpi_dev_get_ioresource(%struct.resource* %15, i32 %18, i32 %21, i32 %24)
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.acpi_resource_fixed_io* %29, %struct.acpi_resource_fixed_io** %7, align 8
  %30 = load %struct.resource*, %struct.resource** %5, align 8
  %31 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %7, align 8
  %32 = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acpi_resource_fixed_io*, %struct.acpi_resource_fixed_io** %7, align 8
  %35 = getelementptr inbounds %struct.acpi_resource_fixed_io, %struct.acpi_resource_fixed_io* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ACPI_DECODE_10, align 4
  %38 = call i32 @acpi_dev_get_ioresource(%struct.resource* %30, i32 %33, i32 %36, i32 %37)
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %51

42:                                               ; preds = %26, %11
  %43 = load %struct.resource*, %struct.resource** %5, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @acpi_dev_get_ioresource(%struct.resource*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
