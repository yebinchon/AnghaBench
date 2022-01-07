; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_find_acpi_cpu_cache_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_find_acpi_cpu_cache_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_cache = type { i32 }
%struct.acpi_pptt_processor = type { i32 }

@ACPI_SIG_PPTT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CACHE_TYPE_UNIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_acpi_cpu_cache_topology(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca %struct.acpi_pptt_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_pptt_processor*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @get_acpi_id_for_cpu(i32 %12)
  store i32 %13, i32* %9, align 4
  store %struct.acpi_pptt_processor* null, %struct.acpi_pptt_processor** %10, align 8
  store i32 -1, i32* %11, align 4
  %14 = load i32, i32* @ACPI_SIG_PPTT, align 4
  %15 = call i32 @acpi_get_table(i32 %14, i32 0, %struct.acpi_table_header** %6)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 (...) @acpi_pptt_warn_missing()
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %2
  %24 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CACHE_TYPE_UNIFIED, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.acpi_pptt_cache* @acpi_find_cache_node(%struct.acpi_table_header* %24, i32 %25, i32 %26, i32 %27, %struct.acpi_pptt_processor** %10)
  store %struct.acpi_pptt_cache* %28, %struct.acpi_pptt_cache** %7, align 8
  %29 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %7, align 8
  %30 = icmp ne %struct.acpi_pptt_cache* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %10, align 8
  %33 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %34 = call i32 @ACPI_PTR_DIFF(%struct.acpi_pptt_processor* %32, %struct.acpi_table_header* %33)
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %37 = call i32 @acpi_put_table(%struct.acpi_table_header* %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @get_acpi_id_for_cpu(i32) #1

declare dso_local i32 @acpi_get_table(i32, i32, %struct.acpi_table_header**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_pptt_warn_missing(...) #1

declare dso_local %struct.acpi_pptt_cache* @acpi_find_cache_node(%struct.acpi_table_header*, i32, i32, i32, %struct.acpi_pptt_processor**) #1

declare dso_local i32 @ACPI_PTR_DIFF(%struct.acpi_pptt_processor*, %struct.acpi_table_header*) #1

declare dso_local i32 @acpi_put_table(%struct.acpi_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
