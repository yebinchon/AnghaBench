; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwregs.c_acpi_hw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i32, i32, i64 }

@hw_read = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@ACPI_DB_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Read:  %8.8X%8.8X width %2d from %8.8X%8.8X (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_read(i64* %0, %struct.acpi_generic_address* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %5, align 8
  %14 = load i32, i32* @hw_read, align 4
  %15 = call i32 @ACPI_FUNCTION_NAME(i32 %14)
  %16 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %17 = call i32 @acpi_hw_validate_register(%struct.acpi_generic_address* %16, i32 64, i64* %6)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load i64*, i64** %4, align 8
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %27 = call i32 @acpi_hw_get_access_bit_width(i64 %25, %struct.acpi_generic_address* %26, i32 64)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %94, %23
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  store i64 0, i64* %10, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %78

49:                                               ; preds = %41
  %50 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ACPI_DIV_8(i32 %58)
  %60 = mul nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @acpi_os_read_memory(i64 %62, i64* %10, i32 %63)
  store i32 %64, i32* %13, align 4
  br label %77

65:                                               ; preds = %49
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ACPI_DIV_8(i32 %68)
  %70 = mul nsw i32 %67, %69
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @acpi_hw_read_port(i64 %72, i32* %11, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %65, %55
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i64*, i64** %4, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @ACPI_MASK_BITS_ABOVE_64(i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = call i32 @ACPI_SET_BITS(i64* %79, i32 %82, i32 %84, i64 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %7, align 4
  br label %94

92:                                               ; preds = %78
  %93 = load i32, i32* %8, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %38

100:                                              ; preds = %38
  %101 = load i32, i32* @ACPI_DB_IO, align 4
  %102 = load i64*, i64** %4, align 8
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @ACPI_FORMAT_UINT64(i64 %103)
  %105 = load i32, i32* %7, align 4
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @ACPI_FORMAT_UINT64(i64 %106)
  %108 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %109 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @acpi_ut_get_region_name(i64 %110)
  %112 = call i32 @ACPI_DEBUG_PRINT(i32 %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %100, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_hw_validate_register(%struct.acpi_generic_address*, i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_hw_get_access_bit_width(i64, %struct.acpi_generic_address*, i32) #1

declare dso_local i32 @acpi_os_read_memory(i64, i64*, i32) #1

declare dso_local i32 @ACPI_DIV_8(i32) #1

declare dso_local i32 @acpi_hw_read_port(i64, i32*, i32) #1

declare dso_local i32 @ACPI_SET_BITS(i64*, i32, i32, i64) #1

declare dso_local i32 @ACPI_MASK_BITS_ABOVE_64(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_get_region_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
