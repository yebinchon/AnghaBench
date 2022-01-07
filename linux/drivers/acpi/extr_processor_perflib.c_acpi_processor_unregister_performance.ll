; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_unregister_performance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_unregister_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@performance_mutex = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_unregister_performance(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @performance_mutex)
  %5 = load i32, i32* @processors, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.acpi_processor* @per_cpu(i32 %5, i32 %6)
  store %struct.acpi_processor* %7, %struct.acpi_processor** %3, align 8
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %9 = icmp ne %struct.acpi_processor* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @mutex_unlock(i32* @performance_mutex)
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %26 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %25, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %26, align 8
  %27 = call i32 @mutex_unlock(i32* @performance_mutex)
  br label %28

28:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
