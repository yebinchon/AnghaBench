; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_integer_to_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exutils.c_acpi_ex_integer_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_integer_to_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @acpi_ex_digits_needed(i32 %9, i32 10)
  store i64 %10, i64* %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  store i8 0, i8* %13, align 1
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %28, %2
  %16 = load i64, i64* %5, align 8
  %17 = icmp ugt i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @acpi_ut_short_divide(i32 %19, i32 10, i32* %4, i64* %7)
  %21 = load i64, i64* %7, align 8
  %22 = add i64 48, %21
  %23 = trunc i64 %22 to i8
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 %23, i8* %27, align 1
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %5, align 8
  br label %15

31:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i64 @acpi_ex_digits_needed(i32, i32) #1

declare dso_local i32 @acpi_ut_short_divide(i32, i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
