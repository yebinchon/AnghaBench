; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utownerid.c_acpi_ut_allocate_owner_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utownerid.c_acpi_ut_allocate_owner_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_allocate_owner_id = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Owner ID [0x%3.3X] already exists\00", align 1
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_MTX_CACHES = common dso_local global i32 0, align 4
@acpi_gbl_last_owner_id_index = common dso_local global i64 0, align 8
@ACPI_NUM_OWNERID_MASKS = common dso_local global i64 0, align 8
@acpi_gbl_next_owner_id_offset = common dso_local global i64 0, align 8
@acpi_gbl_owner_id_mask = common dso_local global i64* null, align 8
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@ACPI_DB_VALUES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Allocated OwnerId: 0x%3.3X\0A\00", align 1
@AE_OWNER_ID_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Could not allocate new OwnerId (4095 max), AE_OWNER_ID_LIMIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_allocate_owner_id(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %8 = load i32, i32* @ut_allocate_owner_id, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @AE_INFO, align 4
  %15 = load i64*, i64** %3, align 8
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @ACPI_ERROR(i32 %17)
  %19 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @ACPI_MTX_CACHES, align 4
  %23 = call i32 @acpi_ut_acquire_mutex(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %21
  store i64 0, i64* %4, align 8
  %31 = load i64, i64* @acpi_gbl_last_owner_id_index, align 8
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %95, %30
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %35 = add nsw i64 %34, 1
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @ACPI_NUM_OWNERID_MASKS, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i64 0, i64* %5, align 8
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i64, i64* @acpi_gbl_next_owner_id_offset, align 8
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %91, %42
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %45, 32
  br i1 %46, label %47, label %94

47:                                               ; preds = %44
  %48 = load i64*, i64** @acpi_gbl_owner_id_mask, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %94

55:                                               ; preds = %47
  %56 = load i64*, i64** @acpi_gbl_owner_id_mask, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = shl i64 1, %60
  %62 = and i64 %59, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %6, align 8
  %66 = shl i64 1, %65
  %67 = load i64*, i64** @acpi_gbl_owner_id_mask, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %70, %66
  store i64 %71, i64* %69, align 8
  %72 = load i64, i64* %5, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = ptrtoint i8* %73 to i64
  store i64 %74, i64* @acpi_gbl_last_owner_id_index, align 8
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, 1
  %77 = inttoptr i64 %76 to i8*
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* @acpi_gbl_next_owner_id_offset, align 8
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, 1
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @ACPI_MUL_32(i64 %81)
  %83 = add nsw i64 %80, %82
  %84 = load i64*, i64** %3, align 8
  store i64 %83, i64* %84, align 8
  %85 = load i32, i32* @ACPI_DB_VALUES, align 4
  %86 = load i64*, i64** %3, align 8
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @ACPI_DEBUG_PRINT(i32 %88)
  br label %104

90:                                               ; preds = %55
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %44

94:                                               ; preds = %54, %44
  store i64 0, i64* @acpi_gbl_next_owner_id_offset, align 8
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %32

100:                                              ; preds = %32
  %101 = load i32, i32* @AE_OWNER_ID_LIMIT, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* @AE_INFO, align 4
  %103 = call i32 @ACPI_ERROR(i32 ptrtoint ([61 x i8]* @.str.2 to i32))
  br label %104

104:                                              ; preds = %100, %64
  %105 = load i32, i32* @ACPI_MTX_CACHES, align 4
  %106 = call i32 @acpi_ut_release_mutex(i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @ACPI_MUL_32(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
