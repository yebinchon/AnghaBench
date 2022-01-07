; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_register_performance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_register_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor_performance = type { i32 }
%struct.acpi_processor = type { %struct.acpi_processor_performance* }

@acpi_processor_cpufreq_init = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@performance_mutex = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_register_performance(%struct.acpi_processor_performance* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_processor_performance*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_processor*, align 8
  store %struct.acpi_processor_performance* %0, %struct.acpi_processor_performance** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @acpi_processor_cpufreq_init, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = call i32 @mutex_lock(i32* @performance_mutex)
  %14 = load i32, i32* @processors, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.acpi_processor* @per_cpu(i32 %14, i32 %15)
  store %struct.acpi_processor* %16, %struct.acpi_processor** %6, align 8
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %18 = icmp ne %struct.acpi_processor* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = call i32 @mutex_unlock(i32* @performance_mutex)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %12
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 0
  %26 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %25, align 8
  %27 = icmp ne %struct.acpi_processor_performance* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call i32 @mutex_unlock(i32* @performance_mutex)
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %52

32:                                               ; preds = %23
  %33 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %34 = icmp ne %struct.acpi_processor_performance* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.acpi_processor_performance*, %struct.acpi_processor_performance** %4, align 8
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %39, i32 0, i32 0
  store %struct.acpi_processor_performance* %38, %struct.acpi_processor_performance** %40, align 8
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %42 = call i64 @acpi_processor_get_performance_info(%struct.acpi_processor* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 0
  store %struct.acpi_processor_performance* null, %struct.acpi_processor_performance** %46, align 8
  %47 = call i32 @mutex_unlock(i32* @performance_mutex)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %32
  %51 = call i32 @mutex_unlock(i32* @performance_mutex)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %44, %28, %19, %9
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @acpi_processor_get_performance_info(%struct.acpi_processor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
