; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_match_platform_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_utils.c_acpi_match_platform_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_platform_list = type { i64, i64, i64*, i64*, i32 }
%struct.acpi_table_header = type { i64, i32, i32 }

@acpi_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ACPI_OEM_ID_SIZE = common dso_local global i32 0, align 4
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i32 0, align 4
@all_versions = common dso_local global i64 0, align 8
@less_than_or_equal = common dso_local global i64 0, align 8
@greater_than_or_equal = common dso_local global i64 0, align 8
@equal = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_match_platform_list(%struct.acpi_platform_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_platform_list*, align 8
  %4 = alloca %struct.acpi_table_header, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_platform_list* %0, %struct.acpi_platform_list** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* @acpi_disabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %103

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %95, %11
  %13 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %100

19:                                               ; preds = %12
  %20 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @acpi_get_table_header(i32 %22, i32 0, %struct.acpi_table_header* %4)
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %95

27:                                               ; preds = %19
  %28 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %29 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %28, i32 0, i32 3
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %34 = call i64 @strncmp(i64* %30, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %95

37:                                               ; preds = %27
  %38 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %38, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %44 = call i64 @strncmp(i64* %40, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %95

47:                                               ; preds = %37
  %48 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @all_versions, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %92, label %53

53:                                               ; preds = %47
  %54 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @less_than_or_equal, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %61, %64
  br i1 %65, label %92, label %66

66:                                               ; preds = %59, %53
  %67 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %68 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @greater_than_or_equal, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %76 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %74, %77
  br i1 %78, label %92, label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @equal, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.acpi_table_header, %struct.acpi_table_header* %4, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %89 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85, %72, %59, %47
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %103

94:                                               ; preds = %85, %79
  br label %95

95:                                               ; preds = %94, %46, %36, %26
  %96 = load %struct.acpi_platform_list*, %struct.acpi_platform_list** %3, align 8
  %97 = getelementptr inbounds %struct.acpi_platform_list, %struct.acpi_platform_list* %96, i32 1
  store %struct.acpi_platform_list* %97, %struct.acpi_platform_list** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %12

100:                                              ; preds = %12
  %101 = load i32, i32* @ENODEV, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %92, %8
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_get_table_header(i32, i32, %struct.acpi_table_header*) #1

declare dso_local i64 @strncmp(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
