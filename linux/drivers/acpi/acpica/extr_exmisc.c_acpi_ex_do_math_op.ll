; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_math_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exmisc.c_acpi_ex_do_math_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_integer_bit_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_do_math_op(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %62 [
    i32 137, label %10
    i32 136, label %14
    i32 135, label %18
    i32 133, label %23
    i32 134, label %27
    i32 132, label %32
    i32 131, label %36
    i32 130, label %40
    i32 129, label %49
    i32 128, label %58
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  %22 = xor i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %63

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  br label %63

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = xor i32 %33, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %3
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %63

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @acpi_gbl_integer_bit_width, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %3
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @acpi_gbl_integer_bit_width, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %3
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %59, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %58, %54, %53, %45, %44, %36, %32, %27, %23, %18, %14, %10
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
