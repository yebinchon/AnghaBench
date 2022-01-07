; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_evged.c_acpi_ged_request_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_evged.c_acpi_ged_request_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_irq }
%struct.acpi_resource_extended_irq = type { i32* }
%struct.acpi_resource_irq = type { i32* }
%struct.acpi_ged_event = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.acpi_ged_device = type { i32, %struct.device* }
%struct.resource = type { i32, i32 }

@IRQF_ONESHOT = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_END_TAG = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to parse IRQ resource\0A\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_IRQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_EVT\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot locate _EVT method\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_SHAREABLE = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@acpi_ged_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ACPI:Ged\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"failed to setup event handler for irq %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"GED listening GSI %u @ IRQ %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_ged_request_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ged_request_interrupt(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_ged_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_ged_device*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource, align 4
  %15 = alloca %struct.acpi_resource_irq*, align 8
  %16 = alloca %struct.acpi_resource_extended_irq*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @IRQF_ONESHOT, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.acpi_ged_device*
  store %struct.acpi_ged_device* %19, %struct.acpi_ged_device** %10, align 8
  %20 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %11, align 8
  %23 = load %struct.device*, %struct.device** %11, align 8
  %24 = call i32 @ACPI_HANDLE(%struct.device* %23)
  store i32 %24, i32* %12, align 4
  %25 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store %struct.acpi_resource_irq* %27, %struct.acpi_resource_irq** %15, align 8
  %28 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %30, %struct.acpi_resource_extended_irq** %16, align 8
  %31 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ACPI_RESOURCE_TYPE_END_TAG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @AE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %128

38:                                               ; preds = %2
  %39 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %40 = call i32 @acpi_dev_resource_interrupt(%struct.acpi_resource* %39, i32 0, %struct.resource* %14)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @AE_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %128

46:                                               ; preds = %38
  %47 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ACPI_RESOURCE_TYPE_IRQ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.acpi_resource_irq*, %struct.acpi_resource_irq** %15, align 8
  %54 = getelementptr inbounds %struct.acpi_resource_irq, %struct.acpi_resource_irq* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %64

58:                                               ; preds = %46
  %59 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %16, align 8
  %60 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %58, %52
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @acpi_get_handle(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.device*, %struct.device** %11, align 8
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @AE_ERROR, align 4
  store i32 %74, i32* %3, align 4
  br label %128

75:                                               ; preds = %64
  %76 = load %struct.device*, %struct.device** %11, align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.acpi_ged_event* @devm_kzalloc(%struct.device* %76, i32 24, i32 %77)
  store %struct.acpi_ged_event* %78, %struct.acpi_ged_event** %6, align 8
  %79 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %80 = icmp ne %struct.acpi_ged_event* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @AE_ERROR, align 4
  store i32 %82, i32* %3, align 4
  br label %128

83:                                               ; preds = %75
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %86 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device*, %struct.device** %11, align 8
  %88 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %89 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %88, i32 0, i32 4
  store %struct.device* %87, %struct.device** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %92 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %95 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @IORESOURCE_IRQ_SHAREABLE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %83
  %102 = load i32, i32* @IRQF_SHARED, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %83
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @acpi_ged_irq_handler, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %110 = call i64 @request_threaded_irq(i32 %106, i32* null, i32 %107, i32 %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.acpi_ged_event* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.device*, %struct.device** %11, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @AE_ERROR, align 4
  store i32 %116, i32* %3, align 4
  br label %128

117:                                              ; preds = %105
  %118 = load %struct.device*, %struct.device** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load %struct.acpi_ged_event*, %struct.acpi_ged_event** %6, align 8
  %123 = getelementptr inbounds %struct.acpi_ged_event, %struct.acpi_ged_event* %122, i32 0, i32 2
  %124 = load %struct.acpi_ged_device*, %struct.acpi_ged_device** %10, align 8
  %125 = getelementptr inbounds %struct.acpi_ged_device, %struct.acpi_ged_device* %124, i32 0, i32 0
  %126 = call i32 @list_add_tail(i32* %123, i32* %125)
  %127 = load i32, i32* @AE_OK, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %117, %112, %81, %71, %42, %36
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_dev_resource_interrupt(%struct.acpi_resource*, i32, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local %struct.acpi_ged_event* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.acpi_ged_event*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
