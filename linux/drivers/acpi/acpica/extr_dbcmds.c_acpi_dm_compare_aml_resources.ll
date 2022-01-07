; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_dm_compare_aml_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_dm_compare_aml_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [72 x i8] c"**** Buffer length mismatch in converted AML: Original %X, New %X ****\0A\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"**** Length mismatch in descriptor [%.2X] type %2.2X, Offset %8.8X Len1 %X, Len2 %X ****\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"**** Data mismatch in descriptor [%.2X] type %2.2X, Offset %8.8X ****\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Mismatch at byte offset %.2X: is %2.2X, should be %2.2X\0A\00", align 1
@ACPI_RESOURCE_NAME_END_TAG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64*, i64)* @acpi_dm_compare_aml_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_dm_compare_aml_resources(i64* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 (i8*, i64, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i64*, i64** %5, align 8
  store i64* %27, i64** %9, align 8
  %28 = load i64*, i64** %7, align 8
  store i64* %28, i64** %10, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %11, align 8
  %32 = load i64*, i64** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64* %34, i64** %12, align 8
  br label %35

35:                                               ; preds = %109, %26
  %36 = load i64*, i64** %9, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = icmp ult i64* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64*, i64** %10, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = icmp ult i64* %40, %41
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %121

45:                                               ; preds = %43
  %46 = load i64*, i64** %9, align 8
  %47 = call i64 @acpi_ut_get_descriptor_length(i64* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = call i64 @acpi_ut_get_descriptor_length(i64* %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = call i64 @acpi_ut_get_resource_type(i64* %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i64, i64* %17, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i32 (i8*, i64, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57, i64 %58, i64 %59, i64 %60)
  br label %104

62:                                               ; preds = %45
  %63 = load i64*, i64** %9, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @memcmp(i64* %63, i64* %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %103

68:                                               ; preds = %62
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %15, align 8
  %72 = call i32 (i8*, i64, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i64 %69, i64 %70, i64 %71)
  store i64 0, i64* %18, align 8
  br label %73

73:                                               ; preds = %99, %68
  %74 = load i64, i64* %18, align 8
  %75 = load i64, i64* %13, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i64*, i64** %9, align 8
  %79 = load i64, i64* %18, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %81, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load i64, i64* %18, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = load i64, i64* %18, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = load i64, i64* %18, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = call i32 (i8*, i64, i64, ...) @acpi_os_printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %88, i64 %92, i64 %96)
  br label %98

98:                                               ; preds = %87, %77
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %18, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %18, align 8
  br label %73

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102, %62
  br label %104

104:                                              ; preds = %103, %55
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* @ACPI_RESOURCE_NAME_END_TAG, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %121

109:                                              ; preds = %104
  %110 = load i64, i64* %17, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %15, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %15, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 %115
  store i64* %117, i64** %9, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %10, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 %118
  store i64* %120, i64** %10, align 8
  br label %35

121:                                              ; preds = %108, %43
  ret void
}

declare dso_local i32 @acpi_os_printf(i8*, i64, i64, ...) #1

declare dso_local i64 @acpi_ut_get_descriptor_length(i64*) #1

declare dso_local i64 @acpi_ut_get_resource_type(i64*) #1

declare dso_local i64 @memcmp(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
