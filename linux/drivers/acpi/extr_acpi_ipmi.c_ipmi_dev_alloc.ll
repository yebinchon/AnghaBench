; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_ipmi_dev_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_ipmi.c_ipmi_dev_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.acpi_ipmi_device = type { i32, %struct.ipmi_user*, i32, i32, i32, i32, i32, i32 }
%struct.ipmi_user = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@driver_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_ipmi_device* (i32, %struct.device*, i32)* @ipmi_dev_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_ipmi_device* @ipmi_dev_alloc(i32 %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_ipmi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_ipmi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_user*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.device* %1, %struct.device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acpi_ipmi_device* @kzalloc(i32 40, i32 %11)
  store %struct.acpi_ipmi_device* %12, %struct.acpi_ipmi_device** %8, align 8
  %13 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %14 = icmp ne %struct.acpi_ipmi_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.acpi_ipmi_device* null, %struct.acpi_ipmi_device** %4, align 8
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %18 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %17, i32 0, i32 7
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %21 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %24 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %23, i32 0, i32 5
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %27 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %26, i32 0, i32 4
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %31 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.device*, %struct.device** %6, align 8
  %33 = call i32 @get_device(%struct.device* %32)
  %34 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %35 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %38 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %41 = call i32 @ipmi_create_user(i32 %39, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @driver_data, i32 0, i32 0), %struct.acpi_ipmi_device* %40, %struct.ipmi_user** %10)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %16
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @put_device(%struct.device* %45)
  %47 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %48 = call i32 @kfree(%struct.acpi_ipmi_device* %47)
  store %struct.acpi_ipmi_device* null, %struct.acpi_ipmi_device** %4, align 8
  br label %54

49:                                               ; preds = %16
  %50 = load %struct.ipmi_user*, %struct.ipmi_user** %10, align 8
  %51 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  %52 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %51, i32 0, i32 1
  store %struct.ipmi_user* %50, %struct.ipmi_user** %52, align 8
  %53 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %8, align 8
  store %struct.acpi_ipmi_device* %53, %struct.acpi_ipmi_device** %4, align 8
  br label %54

54:                                               ; preds = %49, %44, %15
  %55 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %4, align 8
  ret %struct.acpi_ipmi_device* %55
}

declare dso_local %struct.acpi_ipmi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @ipmi_create_user(i32, i32*, %struct.acpi_ipmi_device*, %struct.ipmi_user**) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.acpi_ipmi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
