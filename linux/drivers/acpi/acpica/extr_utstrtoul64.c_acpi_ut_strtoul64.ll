; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstrtoul64.c_acpi_ut_strtoul64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstrtoul64.c_acpi_ut_strtoul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4
@ut_strtoul64 = common dso_local global i32 0, align 4
@acpi_gbl_integer_bit_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_strtoul64(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %6, align 4
  store i32 10, i32* %8, align 4
  %10 = load i32, i32* @ut_strtoul64, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %10, i8* %11)
  %13 = load i64*, i64** %5, align 8
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @AE_OK, align 4
  %20 = call i32 @return_ACPI_STATUS(i32 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = call i32 @acpi_ut_remove_whitespace(i8** %4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @AE_OK, align 4
  %26 = call i32 @return_ACPI_STATUS(i32 %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = call i64 @acpi_ut_detect_hex_prefix(i8** %4)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 16, i32* %8, align 4
  br label %36

31:                                               ; preds = %27
  %32 = call i64 @acpi_ut_detect_octal_prefix(i8** %4)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 8, i32* %8, align 4
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %30
  %37 = call i32 @acpi_ut_remove_leading_zeros(i8** %4)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @AE_OK, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* @acpi_gbl_integer_bit_width, align 4
  store i32 %43, i32* %7, align 4
  store i32 64, i32* @acpi_gbl_integer_bit_width, align 4
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %54 [
    i32 8, label %45
    i32 10, label %49
    i32 16, label %53
  ]

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = call i32 @acpi_ut_convert_octal_string(i8* %46, i64* %47)
  store i32 %48, i32* %6, align 4
  br label %58

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = call i32 @acpi_ut_convert_decimal_string(i8* %50, i64* %51)
  store i32 %52, i32* %6, align 4
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %42, %53
  %55 = load i8*, i8** %4, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = call i32 @acpi_ut_convert_hex_string(i8* %55, i64* %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %49, %45
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* @acpi_gbl_integer_bit_width, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @return_ACPI_STATUS(i32 %60)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_remove_whitespace(i8**) #1

declare dso_local i64 @acpi_ut_detect_hex_prefix(i8**) #1

declare dso_local i64 @acpi_ut_detect_octal_prefix(i8**) #1

declare dso_local i32 @acpi_ut_remove_leading_zeros(i8**) #1

declare dso_local i32 @acpi_ut_convert_octal_string(i8*, i64*) #1

declare dso_local i32 @acpi_ut_convert_decimal_string(i8*, i64*) #1

declare dso_local i32 @acpi_ut_convert_hex_string(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
