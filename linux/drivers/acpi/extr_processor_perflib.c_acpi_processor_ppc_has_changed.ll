; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_has_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_processor_perflib.c_acpi_processor_ppc_has_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, i32, i32 }

@ignore_ppc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_ppc_has_changed(%struct.acpi_processor* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @ignore_ppc, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @acpi_processor_ppc_ost(i32 %19, i32 1)
  br label %21

21:                                               ; preds = %16, %13
  br label %49

22:                                               ; preds = %8
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %24 = call i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @acpi_processor_ppc_ost(i32 %33, i32 1)
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @acpi_processor_ppc_ost(i32 %38, i32 0)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %5, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @cpufreq_update_limits(i32 %47)
  br label %49

49:                                               ; preds = %21, %44, %41
  ret void
}

declare dso_local i32 @acpi_processor_ppc_ost(i32, i32) #1

declare dso_local i32 @acpi_processor_get_platform_limit(%struct.acpi_processor*) #1

declare dso_local i32 @cpufreq_update_limits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
