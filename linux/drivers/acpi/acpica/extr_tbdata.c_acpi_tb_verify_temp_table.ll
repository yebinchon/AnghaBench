; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_verify_temp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbdata.c_acpi_tb_verify_temp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_desc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@AE_OK = common dso_local global i64 0, align 8
@tb_verify_temp_table = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Invalid signature 0x%X for ACPI table, expected [%s]\00", align 1
@AE_BAD_SIGNATURE = common dso_local global i64 0, align 8
@acpi_gbl_enable_table_validation = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"%4.4s 0x%8.8X%8.8X Attempted table install failed\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"%4.4s 0x%8.8X%8.8X Table is already loaded\00", align 1
@ACPI_TABLE_IS_VERIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_tb_verify_temp_table(%struct.acpi_table_desc* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_table_desc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* @AE_OK, align 8
  store i64 %9, i64* %8, align 8
  %10 = load i32, i32* @tb_verify_temp_table, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %13 = call i64 @acpi_tb_validate_temp_table(%struct.acpi_table_desc* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @ACPI_FAILURE(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @AE_NO_MEMORY, align 8
  %19 = call i32 @return_ACPI_STATUS(i64 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %24, i32 0, i32 2
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @ACPI_COMPARE_NAMESEG(%struct.TYPE_2__* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %32 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = call i32 @ACPI_BIOS_ERROR(i32 %36)
  %38 = load i64, i64* @AE_BAD_SIGNATURE, align 8
  store i64 %38, i64* %8, align 8
  br label %122

39:                                               ; preds = %23, %20
  %40 = load i64, i64* @acpi_gbl_enable_table_validation, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %119

42:                                               ; preds = %39
  %43 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @acpi_tb_verify_checksum(i32 %45, i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @ACPI_FAILURE(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %42
  %54 = load i32, i32* @AE_INFO, align 4
  %55 = load i64, i64* @AE_NO_MEMORY, align 8
  %56 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %57 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @acpi_ut_valid_nameseg(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %64 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i8* [ %66, %62 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %67 ]
  %70 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %71 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ACPI_FORMAT_UINT64(i32 %72)
  %74 = call i32 @ACPI_EXCEPTION(i32 %73)
  br label %122

75:                                               ; preds = %42
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  %79 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @acpi_tb_check_duplication(%struct.acpi_table_desc* %79, i32* %80)
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @ACPI_FAILURE(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %78
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i32, i32* @AE_INFO, align 4
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @acpi_ut_valid_nameseg(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %100 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %98
  %105 = phi i8* [ %102, %98 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %103 ]
  %106 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %107 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ACPI_FORMAT_UINT64(i32 %108)
  %110 = call i32 @ACPI_EXCEPTION(i32 %109)
  br label %111

111:                                              ; preds = %104, %85
  br label %122

112:                                              ; preds = %78
  br label %113

113:                                              ; preds = %112, %75
  %114 = load i32, i32* @ACPI_TABLE_IS_VERIFIED, align 4
  %115 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %116 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %39
  %120 = load i64, i64* %8, align 8
  %121 = call i32 @return_ACPI_STATUS(i64 %120)
  br label %122

122:                                              ; preds = %119, %111, %68, %29
  %123 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %5, align 8
  %124 = call i32 @acpi_tb_invalidate_table(%struct.acpi_table_desc* %123)
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @return_ACPI_STATUS(i64 %125)
  %127 = load i64, i64* %4, align 8
  ret i64 %127
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_tb_validate_temp_table(%struct.acpi_table_desc*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_COMPARE_NAMESEG(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @ACPI_BIOS_ERROR(i32) #1

declare dso_local i64 @acpi_tb_verify_checksum(i32, i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i64 @acpi_ut_valid_nameseg(i8*) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i64 @acpi_tb_check_duplication(%struct.acpi_table_desc*, i32*) #1

declare dso_local i32 @acpi_tb_invalidate_table(%struct.acpi_table_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
