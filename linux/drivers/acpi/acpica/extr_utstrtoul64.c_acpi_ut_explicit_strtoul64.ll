; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstrtoul64.c_acpi_ut_explicit_strtoul64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstrtoul64.c_acpi_ut_explicit_strtoul64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_explicit_strtoul64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_explicit_strtoul64(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  %6 = load i32, i32* @ut_explicit_strtoul64, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %6, i8* %7)
  %9 = call i32 @acpi_ut_remove_whitespace(i8** %3)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @return_VALUE(i32 0)
  br label %13

13:                                               ; preds = %11, %1
  %14 = call i64 @acpi_ut_detect_hex_prefix(i8** %3)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 16, i32* %5, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = call i32 @acpi_ut_remove_leading_zeros(i8** %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 @return_VALUE(i32 0)
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %25 [
    i32 10, label %24
    i32 16, label %28
  ]

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %22, %24
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @acpi_ut_convert_decimal_string(i8* %26, i32* %4)
  br label %31

28:                                               ; preds = %22
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @acpi_ut_convert_hex_string(i8* %29, i32* %4)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @return_VALUE(i32 %32)
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i8*) #1

declare dso_local i32 @acpi_ut_remove_whitespace(i8**) #1

declare dso_local i32 @return_VALUE(i32) #1

declare dso_local i64 @acpi_ut_detect_hex_prefix(i8**) #1

declare dso_local i32 @acpi_ut_remove_leading_zeros(i8**) #1

declare dso_local i32 @acpi_ut_convert_decimal_string(i8*, i32*) #1

declare dso_local i32 @acpi_ut_convert_hex_string(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
