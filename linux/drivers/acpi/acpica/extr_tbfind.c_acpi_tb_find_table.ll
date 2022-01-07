; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbfind.c_acpi_tb_find_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_tbfind.c_acpi_tb_find_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32* }
%struct.acpi_table_header = type { i32, i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@tb_find_table = common dso_local global i32 0, align 4
@AE_BAD_SIGNATURE = common dso_local global i32 0, align 4
@ACPI_OEM_ID_SIZE = common dso_local global i64 0, align 8
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i64 0, align 8
@AE_AML_STRING_LIMIT = common dso_local global i32 0, align 4
@ACPI_MTX_TABLES = common dso_local global i32 0, align 4
@acpi_gbl_root_table_list = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ACPI_DB_TABLES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Found table [%4.4s]\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_tb_find_table(i8* %0, i8* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acpi_table_header, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @tb_find_table, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @acpi_ut_valid_nameseg(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @AE_BAD_SIGNATURE, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = load i64, i64* @ACPI_OEM_ID_SIZE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i64, i64* @ACPI_OEM_TABLE_ID_SIZE, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @AE_AML_STRING_LIMIT, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = call i32 @memset(%struct.acpi_table_header* %11, i32 0, i32 12)
  %37 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @ACPI_COPY_NAMESEG(i32 %38, i8* %39)
  %41 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = load i64, i64* @ACPI_OEM_ID_SIZE, align 8
  %45 = call i32 @strncpy(i32 %42, i8* %43, i64 %44)
  %46 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* @ACPI_OEM_TABLE_ID_SIZE, align 8
  %50 = call i32 @strncpy(i32 %47, i8* %48, i64 %49)
  %51 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %52 = call i32 @acpi_ut_acquire_mutex(i32 %51)
  store i64 0, i64* %12, align 8
  br label %53

53:                                               ; preds = %150, %35
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 0), align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %153

57:                                               ; preds = %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %65 = call i64 @memcmp(i32* %61, i32 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %150

68:                                               ; preds = %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = call i32 @acpi_tb_validate_table(%struct.TYPE_5__* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @ACPI_FAILURE(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %155

84:                                               ; preds = %75
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = icmp ne %struct.TYPE_4__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %150

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %104 = call i64 @memcmp(i32* %100, i32 %102, i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %149, label %106

106:                                              ; preds = %93
  %107 = load i8*, i8** %7, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %106
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* @ACPI_OEM_ID_SIZE, align 8
  %122 = call i64 @memcmp(i32* %118, i32 %120, i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %149, label %124

124:                                              ; preds = %111, %106
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_root_table_list, i32 0, i32 1), align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @ACPI_OEM_TABLE_ID_SIZE, align 8
  %140 = call i64 @memcmp(i32* %136, i32 %138, i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %129, %124
  %143 = load i64, i64* %12, align 8
  %144 = load i64*, i64** %9, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i32, i32* @ACPI_DB_TABLES, align 4
  %146 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %11, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ACPI_DEBUG_PRINT(i32 %147)
  br label %155

149:                                              ; preds = %129, %111, %93
  br label %150

150:                                              ; preds = %149, %91, %67
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %12, align 8
  br label %53

153:                                              ; preds = %53
  %154 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %154, i32* %10, align 4
  br label %155

155:                                              ; preds = %153, %142, %83
  %156 = load i32, i32* @ACPI_MTX_TABLES, align 4
  %157 = call i32 @acpi_ut_release_mutex(i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @return_ACPI_STATUS(i32 %158)
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_valid_nameseg(i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.acpi_table_header*, i32, i32) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i32, i8*) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i64) #1

declare dso_local i32 @acpi_tb_validate_table(%struct.TYPE_5__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
