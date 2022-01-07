; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_irq }
%struct.acpi_resource_extended_irq = type { i32, i32, i32, i32, i32* }
%struct.acpi_resource_irq = type { i32, i32, i32, i32, i32* }
%struct.resource = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_resource_interrupt(%struct.acpi_resource* %0, i32 %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.acpi_resource_irq*, align 8
  %9 = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.resource* %2, %struct.resource** %7, align 8
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %83 [
    i32 128, label %13
    i32 129, label %44
  ]

13:                                               ; preds = %3
  %14 = load %struct.acpi_resource*, %struct.acpi_resource** %5, align 8
  %15 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store %struct.acpi_resource_irq* %16, %struct.acpi_resource_irq** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %8, align 8
  %19 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = call i32 @acpi_dev_irqresource_disabled(%struct.resource* %23, i32 0)
  store i32 0, i32* %4, align 4
  br label %87

25:                                               ; preds = %13
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %8, align 8
  %35 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %8, align 8
  %38 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %8, align 8
  %41 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @acpi_dev_get_irqresource(%struct.resource* %26, i32 %33, i32 %36, i32 %39, i32 %42, i32 1)
  br label %86

44:                                               ; preds = %3
  %45 = load %struct.acpi_resource*, %struct.acpi_resource** %5, align 8
  %46 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %47, %struct.acpi_resource_extended_irq** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %50 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.resource*, %struct.resource** %7, align 8
  %55 = call i32 @acpi_dev_irqresource_disabled(%struct.resource* %54, i32 0)
  store i32 0, i32* %4, align 4
  br label %87

56:                                               ; preds = %44
  %57 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %58 = call i32 @is_gsi(%struct.acpi_resource_extended_irq* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %56
  %61 = load %struct.resource*, %struct.resource** %7, align 8
  %62 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %70 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %73 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %9, align 8
  %76 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @acpi_dev_get_irqresource(%struct.resource* %61, i32 %68, i32 %71, i32 %74, i32 %77, i32 0)
  br label %82

79:                                               ; preds = %56
  %80 = load %struct.resource*, %struct.resource** %7, align 8
  %81 = call i32 @acpi_dev_irqresource_disabled(%struct.resource* %80, i32 0)
  br label %82

82:                                               ; preds = %79, %60
  br label %86

83:                                               ; preds = %3
  %84 = load %struct.resource*, %struct.resource** %7, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %87

86:                                               ; preds = %82, %25
  store i32 1, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %83, %53, %22
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @acpi_dev_irqresource_disabled(%struct.resource*, i32) #1

declare dso_local i32 @acpi_dev_get_irqresource(%struct.resource*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @is_gsi(%struct.acpi_resource_extended_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
