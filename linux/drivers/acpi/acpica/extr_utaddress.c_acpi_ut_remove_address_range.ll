; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_remove_address_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_remove_address_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_address_range = type { %struct.acpi_address_range*, i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }

@ut_remove_address_range = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@return_VOID = common dso_local global i32 0, align 4
@acpi_gbl_address_range_list = common dso_local global %struct.acpi_address_range** null, align 8
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"\0ARemoved [%4.4s] address range: 0x%8.8X%8.8X-0x%8.8X%8.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_remove_address_range(i64 %0, %struct.acpi_namespace_node* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_address_range*, align 8
  %6 = alloca %struct.acpi_address_range*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.acpi_namespace_node* %1, %struct.acpi_namespace_node** %4, align 8
  %7 = load i32, i32* @ut_remove_address_range, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @return_VOID, align 4
  br label %18

18:                                               ; preds = %16, %12, %2
  %19 = load %struct.acpi_address_range**, %struct.acpi_address_range*** @acpi_gbl_address_range_list, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.acpi_address_range*, %struct.acpi_address_range** %19, i64 %20
  %22 = load %struct.acpi_address_range*, %struct.acpi_address_range** %21, align 8
  store %struct.acpi_address_range* %22, %struct.acpi_address_range** %6, align 8
  store %struct.acpi_address_range* %22, %struct.acpi_address_range** %5, align 8
  br label %23

23:                                               ; preds = %67, %18
  %24 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %25 = icmp ne %struct.acpi_address_range* %24, null
  br i1 %25, label %26, label %72

26:                                               ; preds = %23
  %27 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %27, i32 0, i32 3
  %29 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %28, align 8
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %31 = icmp eq %struct.acpi_namespace_node* %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %34 = load %struct.acpi_address_range*, %struct.acpi_address_range** %6, align 8
  %35 = icmp eq %struct.acpi_address_range* %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %37, i32 0, i32 0
  %39 = load %struct.acpi_address_range*, %struct.acpi_address_range** %38, align 8
  %40 = load %struct.acpi_address_range**, %struct.acpi_address_range*** @acpi_gbl_address_range_list, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.acpi_address_range*, %struct.acpi_address_range** %40, i64 %41
  store %struct.acpi_address_range* %39, %struct.acpi_address_range** %42, align 8
  br label %49

43:                                               ; preds = %32
  %44 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %44, i32 0, i32 0
  %46 = load %struct.acpi_address_range*, %struct.acpi_address_range** %45, align 8
  %47 = load %struct.acpi_address_range*, %struct.acpi_address_range** %6, align 8
  %48 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %47, i32 0, i32 0
  store %struct.acpi_address_range* %46, %struct.acpi_address_range** %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* @ACPI_DB_NAMES, align 4
  %51 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %51, i32 0, i32 3
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %52, align 8
  %54 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %53)
  %55 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %56 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ACPI_FORMAT_UINT64(i32 %57)
  %59 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %60 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ACPI_FORMAT_UINT64(i32 %61)
  %63 = call i32 @ACPI_DEBUG_PRINT(i32 %62)
  %64 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %65 = call i32 @ACPI_FREE(%struct.acpi_address_range* %64)
  %66 = load i32, i32* @return_VOID, align 4
  br label %67

67:                                               ; preds = %49, %26
  %68 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  store %struct.acpi_address_range* %68, %struct.acpi_address_range** %6, align 8
  %69 = load %struct.acpi_address_range*, %struct.acpi_address_range** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %69, i32 0, i32 0
  %71 = load %struct.acpi_address_range*, %struct.acpi_address_range** %70, align 8
  store %struct.acpi_address_range* %71, %struct.acpi_address_range** %5, align 8
  br label %23

72:                                               ; preds = %23
  %73 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_address_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
