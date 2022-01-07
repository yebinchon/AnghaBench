; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_check_address_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utaddress.c_acpi_ut_check_address_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_address_range = type { i64, i64, %struct.acpi_address_range*, i32 }

@ut_check_address_range = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i64 0, align 8
@acpi_gbl_address_range_list = common dso_local global %struct.acpi_address_range** null, align 8
@TRUE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"%s range 0x%8.8X%8.8X-0x%8.8X%8.8X conflicts with OpRegion 0x%8.8X%8.8X-0x%8.8X%8.8X (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ut_check_address_range(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_address_range*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @ut_check_address_range, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_IO, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @return_UINT32(i64 0)
  br label %25

25:                                               ; preds = %23, %19, %4
  %26 = load %struct.acpi_address_range**, %struct.acpi_address_range*** @acpi_gbl_address_range_list, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.acpi_address_range*, %struct.acpi_address_range** %26, i64 %27
  %29 = load %struct.acpi_address_range*, %struct.acpi_address_range** %28, align 8
  store %struct.acpi_address_range* %29, %struct.acpi_address_range** %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add nsw i64 %30, %31
  %33 = sub nsw i64 %32, 1
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %81, %25
  %35 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %36 = icmp ne %struct.acpi_address_range* %35, null
  br i1 %36, label %37, label %85

37:                                               ; preds = %34
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %40 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %46 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %43
  %50 = load i64, i64* %13, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %49
  %55 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %56 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i8* @acpi_ns_get_normalized_pathname(i32 %57, i32 %58)
  store i8* %59, i8** %12, align 8
  %60 = load i32, i32* @AE_INFO, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @acpi_ut_get_region_name(i64 %61)
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @ACPI_FORMAT_UINT64(i64 %63)
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @ACPI_FORMAT_UINT64(i64 %65)
  %67 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %68 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @ACPI_FORMAT_UINT64(i64 %69)
  %71 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %72 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ACPI_FORMAT_UINT64(i64 %73)
  %75 = load i8*, i8** %12, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = call i32 @ACPI_WARNING(i32 %76)
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @ACPI_FREE(i8* %78)
  br label %80

80:                                               ; preds = %54, %49
  br label %81

81:                                               ; preds = %80, %43, %37
  %82 = load %struct.acpi_address_range*, %struct.acpi_address_range** %10, align 8
  %83 = getelementptr inbounds %struct.acpi_address_range, %struct.acpi_address_range* %82, i32 0, i32 2
  %84 = load %struct.acpi_address_range*, %struct.acpi_address_range** %83, align 8
  store %struct.acpi_address_range* %84, %struct.acpi_address_range** %10, align 8
  br label %34

85:                                               ; preds = %34
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @return_UINT32(i64 %86)
  %88 = load i64, i64* %5, align 8
  ret i64 %88
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_UINT32(i64) #1

declare dso_local i8* @acpi_ns_get_normalized_pathname(i32, i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
