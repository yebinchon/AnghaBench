; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exregion.c_acpi_ex_system_io_space_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exregion.c_acpi_ex_system_io_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@ex_system_io_space_handler = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"System-IO (width %u) R/W %u Address=%8.8X%8.8X\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_system_io_space_handler(i32 %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @ex_system_io_space_handler, align 4
  %18 = call i32 @ACPI_FUNCTION_TRACE(i32 %17)
  %19 = load i32, i32* @ACPI_DB_INFO, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ACPI_FORMAT_UINT64(i32 %22)
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 %23)
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %38 [
    i32 129, label %26
    i32 128, label %32
  ]

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @acpi_hw_read_port(i32 %27, i32* %15, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  br label %40

32:                                               ; preds = %6
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @acpi_hw_write_port(i32 %33, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  br label %40

38:                                               ; preds = %6
  %39 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %38, %32, %26
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i32 @acpi_hw_read_port(i32, i32*, i32) #1

declare dso_local i32 @acpi_hw_write_port(i32, i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
