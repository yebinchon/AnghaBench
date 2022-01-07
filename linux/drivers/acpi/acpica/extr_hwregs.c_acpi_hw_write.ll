; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i32, i32, i64 }

@hw_write = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Wrote: %8.8X%8.8X width %2d   to %8.8X%8.8X (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_write(i64 %0, %struct.acpi_generic_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %5, align 8
  %13 = load i32, i32* @hw_write, align 4
  %14 = call i32 @ACPI_FUNCTION_NAME(i32 %13)
  %15 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %16 = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %15, i32 64, i64* %6)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %3, align 4
  br label %110

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %25 = call i32 @acpi_hw_get_access_bit_width(i64 %23, %struct.acpi_generic_address* %24, i32 64)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %91, %22
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ACPI_MASK_BITS_ABOVE_64(i32 %43)
  %45 = call i64 @ACPI_GET_BITS(i64* %4, i32 %42, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  br label %83

53:                                               ; preds = %39
  %54 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %55 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ACPI_DIV_8(i32 %62)
  %64 = mul nsw i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %60, %65
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @acpi_os_write_memory(i64 %66, i64 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  br label %82

70:                                               ; preds = %53
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @ACPI_DIV_8(i32 %73)
  %75 = mul nsw i32 %72, %74
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %71, %76
  %78 = load i64, i64* %10, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @acpi_hw_write_port(i64 %77, i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %70, %59
  br label %83

83:                                               ; preds = %82, %49
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %36

97:                                               ; preds = %36
  %98 = load i32, i32* @ACPI_DB_IO, align 4
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @ACPI_FORMAT_UINT64(i64 %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @ACPI_FORMAT_UINT64(i64 %102)
  %104 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %105 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @acpi_ut_get_region_name(i64 %106)
  %108 = call i32 @ACPI_DEBUG_PRINT(i32 %107)
  %109 = load i32, i32* %12, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %97, %20
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address*, i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_hw_get_access_bit_width(i64, %struct.acpi_generic_address*, i32) #1

declare dso_local i64 @ACPI_GET_BITS(i64*, i32, i32) #1

declare dso_local i32 @ACPI_MASK_BITS_ABOVE_64(i32) #1

declare dso_local i32 @acpi_os_write_memory(i64, i64, i32) #1

declare dso_local i32 @ACPI_DIV_8(i32) #1

declare dso_local i32 @acpi_hw_write_port(i64, i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
