; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_clear_from_storage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/apei/extr_erst.c___erst_clear_from_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { i32 }

@FIRMWARE_TIMEOUT = common dso_local global i64 0, align 8
@ACPI_ERST_BEGIN_CLEAR = common dso_local global i32 0, align 4
@ACPI_ERST_SET_RECORD_ID = common dso_local global i32 0, align 4
@ACPI_ERST_EXECUTE_OPERATION = common dso_local global i32 0, align 4
@ACPI_ERST_CHECK_BUSY_STATUS = common dso_local global i32 0, align 4
@SPIN_UNIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_ERST_GET_COMMAND_STATUS = common dso_local global i32 0, align 4
@ACPI_ERST_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__erst_clear_from_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__erst_clear_from_storage(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.apei_exec_context, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* @FIRMWARE_TIMEOUT, align 8
  store i64 %8, i64* %5, align 8
  %9 = call i32 @erst_exec_ctx_init(%struct.apei_exec_context* %4)
  %10 = load i32, i32* @ACPI_ERST_BEGIN_CLEAR, align 4
  %11 = call i32 @apei_exec_run_optional(%struct.apei_exec_context* %4, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %71

16:                                               ; preds = %1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @apei_exec_ctx_set_input(%struct.apei_exec_context* %4, i64 %17)
  %19 = load i32, i32* @ACPI_ERST_SET_RECORD_ID, align 4
  %20 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %71

25:                                               ; preds = %16
  %26 = load i32, i32* @ACPI_ERST_EXECUTE_OPERATION, align 4
  %27 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %71

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* @ACPI_ERST_CHECK_BUSY_STATUS, align 4
  %35 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %71

40:                                               ; preds = %33
  %41 = call i64 @apei_exec_ctx_get_output(%struct.apei_exec_context* %4)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %53

45:                                               ; preds = %40
  %46 = load i32, i32* @SPIN_UNIT, align 4
  %47 = call i64 @erst_timedout(i64* %5, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %71

52:                                               ; preds = %45
  br label %33

53:                                               ; preds = %44
  %54 = load i32, i32* @ACPI_ERST_GET_COMMAND_STATUS, align 4
  %55 = call i32 @apei_exec_run(%struct.apei_exec_context* %4, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %71

60:                                               ; preds = %53
  %61 = call i64 @apei_exec_ctx_get_output(%struct.apei_exec_context* %4)
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* @ACPI_ERST_END, align 4
  %63 = call i32 @apei_exec_run_optional(%struct.apei_exec_context* %4, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @erst_errno(i64 %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %66, %58, %49, %38, %30, %23, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @erst_exec_ctx_init(%struct.apei_exec_context*) #1

declare dso_local i32 @apei_exec_run_optional(%struct.apei_exec_context*, i32) #1

declare dso_local i32 @apei_exec_ctx_set_input(%struct.apei_exec_context*, i64) #1

declare dso_local i32 @apei_exec_run(%struct.apei_exec_context*, i32) #1

declare dso_local i64 @apei_exec_ctx_get_output(%struct.apei_exec_context*) #1

declare dso_local i64 @erst_timedout(i64*, i32) #1

declare dso_local i32 @erst_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
