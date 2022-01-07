; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbexec.c_acpi_db_execute_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbexec.c_acpi_db_execute_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_db_method_info = type { i8*, i32, i64* }

@db_execute_setup = common dso_local global i32 0, align 4
@acpi_gbl_db_scope_buf = common dso_local global i8* null, align 8
@AE_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@ACPI_DB_DUPLICATE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Evaluating %s\0A\00", align 1
@EX_SINGLE_STEP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_cm_single_step = common dso_local global i32 0, align 4
@ACPI_DB_CONSOLE_OUTPUT = common dso_local global i32 0, align 4
@ACPI_DB_REDIRECTABLE_OUTPUT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"During setup for method execution\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_db_method_info*)* @acpi_db_execute_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_execute_setup(%struct.acpi_db_method_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_db_method_info*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_db_method_info* %0, %struct.acpi_db_method_info** %3, align 8
  %5 = load i32, i32* @db_execute_setup, align 4
  %6 = call i32 @ACPI_FUNCTION_NAME(i32 %5)
  %7 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %7, i32 0, i32 2
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 92
  br i1 %17, label %18, label %36

18:                                               ; preds = %1
  %19 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 47
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i8*, i8** @acpi_gbl_db_scope_buf, align 8
  %31 = call i64 @acpi_ut_safe_strcat(i64* %29, i32 8, i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @AE_BUFFER_OVERFLOW, align 4
  store i32 %34, i32* %4, align 4
  br label %73

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %18, %1
  %37 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @acpi_ut_safe_strcat(i64* %39, i32 8, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @AE_BUFFER_OVERFLOW, align 4
  store i32 %46, i32* %4, align 4
  br label %73

47:                                               ; preds = %36
  %48 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = call i32 @acpi_db_prep_namestring(i64* %50)
  %52 = load i32, i32* @ACPI_DB_DUPLICATE_OUTPUT, align 4
  %53 = call i32 @acpi_db_set_output_destination(i32 %52)
  %54 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %56)
  %58 = load %struct.acpi_db_method_info*, %struct.acpi_db_method_info** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_db_method_info, %struct.acpi_db_method_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EX_SINGLE_STEP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %47
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* @acpi_gbl_cm_single_step, align 4
  %66 = load i32, i32* @ACPI_DB_CONSOLE_OUTPUT, align 4
  %67 = call i32 @acpi_db_set_output_destination(i32 %66)
  br label %71

68:                                               ; preds = %47
  %69 = load i32, i32* @ACPI_DB_REDIRECTABLE_OUTPUT, align 4
  %70 = call i32 @acpi_db_set_output_destination(i32 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* @AE_OK, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %45, %33
  %74 = load i32, i32* @AE_INFO, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %71
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @acpi_ut_safe_strcat(i64*, i32, i8*) #1

declare dso_local i32 @acpi_db_prep_namestring(i64*) #1

declare dso_local i32 @acpi_db_set_output_destination(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i64*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
