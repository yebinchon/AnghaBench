; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_pathname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32* }
%struct.acpi_namespace_node = type { i32 }

@ns_handle_to_pathname = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s [%X]\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_handle_to_pathname(i32 %0, %struct.acpi_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ns_handle_to_pathname, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32 %14)
  store %struct.acpi_namespace_node* %15, %struct.acpi_namespace_node** %9, align 8
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %17 = icmp ne %struct.acpi_namespace_node* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %22, i32* null, i64 0, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %31, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @return_ACPI_STATUS(i32 %38)
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %42 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node* %41, i32* %44, i64 %45, i32 %46)
  %48 = load i32, i32* @ACPI_DB_EXEC, align 4
  %49 = load %struct.acpi_buffer*, %struct.acpi_buffer** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i64, i64* %10, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ACPI_DEBUG_PRINT(i32 %54)
  %56 = load i32, i32* @AE_OK, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_ns_build_normalized_path(%struct.acpi_namespace_node*, i32*, i64, i32) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
