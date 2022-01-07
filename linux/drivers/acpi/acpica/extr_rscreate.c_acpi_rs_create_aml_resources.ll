; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_aml_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rscreate.c_acpi_rs_create_aml_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i64, i32 }

@rs_create_aml_resources = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ResourceList Buffer = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"AmlSizeNeeded=%X, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"OutputBuffer %p Length %X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer* %0, %struct.acpi_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_buffer*, align 8
  %5 = alloca %struct.acpi_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.acpi_buffer* %0, %struct.acpi_buffer** %4, align 8
  store %struct.acpi_buffer* %1, %struct.acpi_buffer** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* @rs_create_aml_resources, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i32, i32* @ACPI_DB_INFO, align 4
  %11 = load %struct.acpi_buffer*, %struct.acpi_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ACPI_DEBUG_PRINT(i32 %13)
  %15 = load %struct.acpi_buffer*, %struct.acpi_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.acpi_buffer*, %struct.acpi_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @acpi_rs_get_aml_length(i32 %17, i64 %20, i64* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @ACPI_DB_INFO, align 4
  %23 = load i64, i64* %7, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @acpi_format_exception(i32 %25)
  %27 = call i32 @ACPI_DEBUG_PRINT(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer* %35, i64 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @return_ACPI_STATUS(i32 %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.acpi_buffer*, %struct.acpi_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @acpi_rs_convert_resources_to_aml(i32 %47, i64 %48, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @ACPI_FAILURE(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, i32* @ACPI_DB_INFO, align 4
  %61 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.acpi_buffer*, %struct.acpi_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ACPI_DEBUG_PRINT(i32 %67)
  %69 = load i32, i32* @AE_OK, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_rs_get_aml_length(i32, i64, i64*) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_initialize_buffer(%struct.acpi_buffer*, i64) #1

declare dso_local i32 @acpi_rs_convert_resources_to_aml(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
