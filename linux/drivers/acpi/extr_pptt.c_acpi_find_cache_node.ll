; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_cache_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_cache_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pptt_cache = type { i32 }
%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_processor = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Looking for CPU %d's level %d cache type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_pptt_cache* (%struct.acpi_table_header*, i32, i32, i32, %struct.acpi_pptt_processor**)* @acpi_find_cache_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_pptt_cache* @acpi_find_cache_node(%struct.acpi_table_header* %0, i32 %1, i32 %2, i32 %3, %struct.acpi_pptt_processor** %4) #0 {
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_pptt_processor**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_pptt_cache*, align 8
  %13 = alloca %struct.acpi_pptt_processor*, align 8
  %14 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.acpi_pptt_processor** %4, %struct.acpi_pptt_processor*** %10, align 8
  store i32 0, i32* %11, align 4
  store %struct.acpi_pptt_cache* null, %struct.acpi_pptt_cache** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @acpi_cache_type(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header* %21, i32 %22)
  store %struct.acpi_pptt_processor* %23, %struct.acpi_pptt_processor** %13, align 8
  br label %24

24:                                               ; preds = %33, %5
  %25 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %13, align 8
  %26 = icmp ne %struct.acpi_pptt_processor* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %12, align 8
  %29 = icmp ne %struct.acpi_pptt_cache* %28, null
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %33, label %46

33:                                               ; preds = %31
  %34 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %35 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call %struct.acpi_pptt_cache* @acpi_find_cache_level(%struct.acpi_table_header* %34, %struct.acpi_pptt_processor* %35, i32* %11, i32 %36, i32 %37)
  store %struct.acpi_pptt_cache* %38, %struct.acpi_pptt_cache** %12, align 8
  %39 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %13, align 8
  %40 = load %struct.acpi_pptt_processor**, %struct.acpi_pptt_processor*** %10, align 8
  store %struct.acpi_pptt_processor* %39, %struct.acpi_pptt_processor** %40, align 8
  %41 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %42 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %13, align 8
  %43 = getelementptr inbounds %struct.acpi_pptt_processor, %struct.acpi_pptt_processor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.acpi_pptt_processor* @fetch_pptt_node(%struct.acpi_table_header* %41, i32 %44)
  store %struct.acpi_pptt_processor* %45, %struct.acpi_pptt_processor** %13, align 8
  br label %24

46:                                               ; preds = %31
  %47 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %12, align 8
  ret %struct.acpi_pptt_cache* %47
}

declare dso_local i32 @acpi_cache_type(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.acpi_pptt_processor* @acpi_find_processor_node(%struct.acpi_table_header*, i32) #1

declare dso_local %struct.acpi_pptt_cache* @acpi_find_cache_level(%struct.acpi_table_header*, %struct.acpi_pptt_processor*, i32*, i32, i32) #1

declare dso_local %struct.acpi_pptt_processor* @fetch_pptt_node(%struct.acpi_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
