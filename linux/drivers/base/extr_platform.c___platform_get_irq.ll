; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.resource = type { i32, i32 }
%struct.irq_data = type { i32 }

@CONFIG_OF_IRQ = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@IORESOURCE_BITS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @__platform_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__platform_get_irq(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_data*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @CONFIG_OF_IRQ, align 4
  %12 = call i64 @IS_ENABLED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @of_irq_get(i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %131

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %14, %2
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = load i32, i32* @IORESOURCE_IRQ, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %38, i32 %39, i32 %40)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i64 @has_acpi_companion(%struct.TYPE_6__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %37
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = icmp ne %struct.resource* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @ACPI_HANDLE(%struct.TYPE_6__* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.resource*, %struct.resource** %6, align 8
  %62 = call i32 @acpi_irq_get(i32 %59, i32 %60, %struct.resource* %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %131

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %49, %46
  br label %69

69:                                               ; preds = %68, %37
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = icmp ne %struct.resource* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load %struct.resource*, %struct.resource** %6, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IORESOURCE_BITS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.resource*, %struct.resource** %6, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.irq_data* @irq_get_irq_data(i32 %82)
  store %struct.irq_data* %83, %struct.irq_data** %9, align 8
  %84 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %85 = icmp ne %struct.irq_data* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %131

89:                                               ; preds = %79
  %90 = load %struct.irq_data*, %struct.irq_data** %9, align 8
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IORESOURCE_BITS, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @irqd_set_trigger_type(%struct.irq_data* %90, i32 %95)
  br label %97

97:                                               ; preds = %89, %72, %69
  %98 = load %struct.resource*, %struct.resource** %6, align 8
  %99 = icmp ne %struct.resource* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.resource*, %struct.resource** %6, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %3, align 4
  br label %131

104:                                              ; preds = %97
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i64 @has_acpi_companion(%struct.TYPE_6__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = call i32 @ACPI_COMPANION(%struct.TYPE_6__* %114)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @acpi_dev_gpio_irq_get(i32 %115, i32 %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @EPROBE_DEFER, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120, %112
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %3, align 4
  br label %131

127:                                              ; preds = %120
  br label %128

128:                                              ; preds = %127, %107, %104
  %129 = load i32, i32* @ENXIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %125, %100, %86, %65, %34
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_irq_get(i64, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @has_acpi_companion(%struct.TYPE_6__*) #1

declare dso_local i32 @acpi_irq_get(i32, i32, %struct.resource*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.TYPE_6__*) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @irqd_set_trigger_type(%struct.irq_data*, i32) #1

declare dso_local i32 @acpi_dev_gpio_irq_get(i32, i32) #1

declare dso_local i32 @ACPI_COMPANION(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
