; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_soft_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_driver.c_acpi_soft_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_device = type { i32 }

@processors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Will online and init hotplugged CPU: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to start CPU: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_soft_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_soft_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_processor*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @processors, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.acpi_processor* @per_cpu(i32 %7, i32 %8)
  store %struct.acpi_processor* %9, %struct.acpi_processor** %4, align 8
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %11 = icmp ne %struct.acpi_processor* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @acpi_bus_get_device(i32 %15, %struct.acpi_device** %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %50

19:                                               ; preds = %12
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %34 = call i32 @__acpi_processor_start(%struct.acpi_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @WARN(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %49

40:                                               ; preds = %19
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %42 = call i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor* %41, i32 0)
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %44 = call i32 @acpi_processor_hotplug(%struct.acpi_processor* %43)
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %46 = call i32 @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %45, i32 0)
  %47 = load %struct.acpi_processor*, %struct.acpi_processor** %4, align 8
  %48 = call i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %47)
  br label %49

49:                                               ; preds = %40, %25
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @__acpi_processor_start(%struct.acpi_device*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @acpi_processor_ppc_has_changed(%struct.acpi_processor*, i32) #1

declare dso_local i32 @acpi_processor_hotplug(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_reevaluate_tstate(%struct.acpi_processor*, i32) #1

declare dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
