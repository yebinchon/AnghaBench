; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_hotplug_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_hotplug_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_hp_work = type { i32, i32, %struct.acpi_device* }

@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Scheduling hotplug event (%p, %u) for deferred execution.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_hotplug_work_fn = common dso_local global i32 0, align 4
@kacpi_hotplug_wq = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hotplug_schedule(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_hp_work*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ACPI_DB_EXEC, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ACPI_DEBUG_PRINT(i32 %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acpi_hp_work* @kmalloc(i32 16, i32 %11)
  store %struct.acpi_hp_work* %12, %struct.acpi_hp_work** %6, align 8
  %13 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %14 = icmp ne %struct.acpi_hp_work* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %19 = getelementptr inbounds %struct.acpi_hp_work, %struct.acpi_hp_work* %18, i32 0, i32 0
  %20 = load i32, i32* @acpi_hotplug_work_fn, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %23 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %24 = getelementptr inbounds %struct.acpi_hp_work, %struct.acpi_hp_work* %23, i32 0, i32 2
  store %struct.acpi_device* %22, %struct.acpi_device** %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_hp_work, %struct.acpi_hp_work* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @kacpi_hotplug_wq, align 4
  %29 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %30 = getelementptr inbounds %struct.acpi_hp_work, %struct.acpi_hp_work* %29, i32 0, i32 0
  %31 = call i32 @queue_work(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %17
  %34 = load %struct.acpi_hp_work*, %struct.acpi_hp_work** %6, align 8
  %35 = call i32 @kfree(%struct.acpi_hp_work* %34)
  %36 = load i32, i32* @AE_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @AE_OK, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %33, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.acpi_hp_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @kfree(%struct.acpi_hp_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
