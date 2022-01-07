; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_pptt_walk_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pptt.c_acpi_pptt_walk_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_header = type { i32 }
%struct.acpi_subtable_header = type { i64 }
%struct.acpi_pptt_cache = type { i32, i32, i32 }

@ACPI_PPTT_TYPE_CACHE = common dso_local global i64 0, align 8
@ACPI_PPTT_CACHE_TYPE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Found duplicate cache level/type unable to determine uniqueness\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Found cache @ level %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_table_header*, i32, %struct.acpi_subtable_header*, %struct.acpi_pptt_cache**, i32, i32)* @acpi_pptt_walk_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pptt_walk_cache(%struct.acpi_table_header* %0, i32 %1, %struct.acpi_subtable_header* %2, %struct.acpi_pptt_cache** %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_table_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_subtable_header*, align 8
  %11 = alloca %struct.acpi_pptt_cache**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.acpi_pptt_cache*, align 8
  store %struct.acpi_table_header* %0, %struct.acpi_table_header** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.acpi_subtable_header* %2, %struct.acpi_subtable_header** %10, align 8
  store %struct.acpi_pptt_cache** %3, %struct.acpi_pptt_cache*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %10, align 8
  %16 = getelementptr inbounds %struct.acpi_subtable_header, %struct.acpi_subtable_header* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_PPTT_TYPE_CACHE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %71

21:                                               ; preds = %6
  %22 = load %struct.acpi_subtable_header*, %struct.acpi_subtable_header** %10, align 8
  %23 = bitcast %struct.acpi_subtable_header* %22 to %struct.acpi_pptt_cache*
  store %struct.acpi_pptt_cache* %23, %struct.acpi_pptt_cache** %14, align 8
  br label %24

24:                                               ; preds = %63, %21
  %25 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %26 = icmp ne %struct.acpi_pptt_cache* %25, null
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %35 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ACPI_PPTT_CACHE_TYPE_VALID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %33
  %41 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %42 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i64 @acpi_pptt_match_type(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.acpi_pptt_cache**, %struct.acpi_pptt_cache*** %11, align 8
  %49 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %48, align 8
  %50 = icmp ne %struct.acpi_pptt_cache* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %53 = load %struct.acpi_pptt_cache**, %struct.acpi_pptt_cache*** %11, align 8
  %54 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %53, align 8
  %55 = icmp ne %struct.acpi_pptt_cache* %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51, %47
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %62 = load %struct.acpi_pptt_cache**, %struct.acpi_pptt_cache*** %11, align 8
  store %struct.acpi_pptt_cache* %61, %struct.acpi_pptt_cache** %62, align 8
  br label %63

63:                                               ; preds = %58, %40, %33, %27
  %64 = load %struct.acpi_table_header*, %struct.acpi_table_header** %8, align 8
  %65 = load %struct.acpi_pptt_cache*, %struct.acpi_pptt_cache** %14, align 8
  %66 = getelementptr inbounds %struct.acpi_pptt_cache, %struct.acpi_pptt_cache* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.acpi_pptt_cache* @fetch_pptt_cache(%struct.acpi_table_header* %64, i32 %67)
  store %struct.acpi_pptt_cache* %68, %struct.acpi_pptt_cache** %14, align 8
  br label %24

69:                                               ; preds = %24
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %20
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i64 @acpi_pptt_match_type(i32, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.acpi_pptt_cache* @fetch_pptt_cache(%struct.acpi_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
