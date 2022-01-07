; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_cache_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_find_cache_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pptt_cache = type { i32 }
%struct.acpi_table_header = type { i32 }
%struct.acpi_pptt_processor = type { i32 }
%struct.acpi_subtable_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_pptt_cache* (%struct.acpi_table_header*, %struct.acpi_pptt_processor*, i32*, i32, i32)* @acpi_find_cache_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_pptt_cache* @acpi_find_cache_level(%struct.acpi_table_header* %0, %struct.acpi_pptt_processor* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.acpi_table_header*, align 8
  %7 = alloca %struct.acpi_pptt_processor*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_subtable_header*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_pptt_cache*, align 8
  %15 = alloca i32, align 4
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %6, align 8
  store %struct.acpi_pptt_processor* %1, %struct.acpi_pptt_processor** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.acpi_pptt_cache* null, %struct.acpi_pptt_cache** %14, align 8
  br label %18

18:                                               ; preds = %39, %5
  %19 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %20 = load %struct.acpi_pptt_processor*, %struct.acpi_pptt_processor** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call %struct.acpi_subtable_header* @acpi_get_pptt_resource(%struct.acpi_table_header* %19, %struct.acpi_pptt_processor* %20, i32 %21)
  store %struct.acpi_subtable_header* %22, %struct.acpi_subtable_header** %11, align 8
  %23 = icmp ne %struct.acpi_subtable_header* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load %struct.acpi_table_header*, %struct.acpi_table_header** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @acpi_pptt_walk_cache(%struct.acpi_table_header* %27, i32 %29, %struct.acpi_subtable_header* %30, %struct.acpi_pptt_cache** %14, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %15, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %24
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  ret %struct.acpi_pptt_cache* %49
}

declare dso_local %struct.acpi_subtable_header* @acpi_get_pptt_resource(%struct.acpi_table_header*, %struct.acpi_pptt_processor*, i32) #1

declare dso_local i32 @acpi_pptt_walk_cache(%struct.acpi_table_header*, i32, %struct.acpi_subtable_header*, %struct.acpi_pptt_cache**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
