; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_get_irq_source_fwhandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_irq.c_acpi_get_irq_source_fwhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.acpi_resource_source = type { i32, i32 }
%struct.acpi_device = type { %struct.fwnode_handle }

@acpi_gsi_domain_id = common dso_local global %struct.fwnode_handle* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwnode_handle* (%struct.acpi_resource_source*)* @acpi_get_irq_source_fwhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwnode_handle* @acpi_get_irq_source_fwhandle(%struct.acpi_resource_source* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.acpi_resource_source*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_resource_source* %0, %struct.acpi_resource_source** %3, align 8
  %8 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** @acpi_gsi_domain_id, align 8
  store %struct.fwnode_handle* %13, %struct.fwnode_handle** %2, align 8
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.acpi_resource_source*, %struct.acpi_resource_source** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_resource_source, %struct.acpi_resource_source* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @acpi_get_handle(i32* null, i32 %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ACPI_FAILURE(i32 %19)
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %2, align 8
  br label %40

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.acpi_device* @acpi_bus_get_acpi_device(i32 %25)
  store %struct.acpi_device* %26, %struct.acpi_device** %5, align 8
  %27 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %28 = icmp ne %struct.acpi_device* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %2, align 8
  br label %40

34:                                               ; preds = %24
  %35 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  store %struct.fwnode_handle* %36, %struct.fwnode_handle** %4, align 8
  %37 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %38 = call i32 @acpi_bus_put_acpi_device(%struct.acpi_device* %37)
  %39 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  store %struct.fwnode_handle* %39, %struct.fwnode_handle** %2, align 8
  br label %40

40:                                               ; preds = %34, %33, %23, %12
  %41 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  ret %struct.fwnode_handle* %41
}

declare dso_local i32 @acpi_get_handle(i32*, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %struct.acpi_device* @acpi_bus_get_acpi_device(i32) #1

declare dso_local i32 @acpi_bus_put_acpi_device(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
