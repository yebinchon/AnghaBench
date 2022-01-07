; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsnames.c_acpi_ns_handle_to_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64 }
%struct.acpi_namespace_node = type { i32 }

@ns_handle_to_name = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_PATH_SEGMENT_LENGTH = common dso_local global i32 0, align 4
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%4.4s\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_handle_to_name(i32 %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  %9 = load i32, i32* @ns_handle_to_name, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32 %12)
  store %struct.acpi_namespace_node* %13, %struct.acpi_namespace_node** %7, align 8
  %14 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %15 = icmp ne %struct.acpi_namespace_node* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %21 = load i32, i32* @ACPI_PATH_SEGMENT_LENGTH, align 4
  %22 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @return_ACPI_STATUS(i32 %27)
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %31 = call i8* @acpi_ut_get_node_name(%struct.acpi_namespace_node* %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @ACPI_COPY_NAMESEG(i64 %34, i8* %35)
  %37 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* @ACPI_DB_EXEC, align 4
  %44 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = ptrtoint i8* %47 to i32
  %49 = call i32 @ACPI_DEBUG_PRINT(i32 %48)
  %50 = load i32, i32* @AE_OK, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_ns_validate_handle(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i8* @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i64, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
