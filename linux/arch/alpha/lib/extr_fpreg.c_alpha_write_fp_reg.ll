; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/lib/extr_fpreg.c_alpha_write_fp_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/lib/extr_fpreg.c_alpha_write_fp_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alpha_write_fp_reg(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  switch i64 %5, label %102 [
    i64 0, label %6
    i64 1, label %9
    i64 2, label %12
    i64 3, label %15
    i64 4, label %18
    i64 5, label %21
    i64 6, label %24
    i64 7, label %27
    i64 8, label %30
    i64 9, label %33
    i64 10, label %36
    i64 11, label %39
    i64 12, label %42
    i64 13, label %45
    i64 14, label %48
    i64 15, label %51
    i64 16, label %54
    i64 17, label %57
    i64 18, label %60
    i64 19, label %63
    i64 20, label %66
    i64 21, label %69
    i64 22, label %72
    i64 23, label %75
    i64 24, label %78
    i64 25, label %81
    i64 26, label %84
    i64 27, label %87
    i64 28, label %90
    i64 29, label %93
    i64 30, label %96
    i64 31, label %99
  ]

6:                                                ; preds = %2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @LDT(i32 0, i64 %7)
  br label %102

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @LDT(i32 1, i64 %10)
  br label %102

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @LDT(i32 2, i64 %13)
  br label %102

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @LDT(i32 3, i64 %16)
  br label %102

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @LDT(i32 4, i64 %19)
  br label %102

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @LDT(i32 5, i64 %22)
  br label %102

24:                                               ; preds = %2
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @LDT(i32 6, i64 %25)
  br label %102

27:                                               ; preds = %2
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @LDT(i32 7, i64 %28)
  br label %102

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @LDT(i32 8, i64 %31)
  br label %102

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @LDT(i32 9, i64 %34)
  br label %102

36:                                               ; preds = %2
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @LDT(i32 10, i64 %37)
  br label %102

39:                                               ; preds = %2
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @LDT(i32 11, i64 %40)
  br label %102

42:                                               ; preds = %2
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @LDT(i32 12, i64 %43)
  br label %102

45:                                               ; preds = %2
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @LDT(i32 13, i64 %46)
  br label %102

48:                                               ; preds = %2
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @LDT(i32 14, i64 %49)
  br label %102

51:                                               ; preds = %2
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @LDT(i32 15, i64 %52)
  br label %102

54:                                               ; preds = %2
  %55 = load i64, i64* %4, align 8
  %56 = call i32 @LDT(i32 16, i64 %55)
  br label %102

57:                                               ; preds = %2
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @LDT(i32 17, i64 %58)
  br label %102

60:                                               ; preds = %2
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @LDT(i32 18, i64 %61)
  br label %102

63:                                               ; preds = %2
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @LDT(i32 19, i64 %64)
  br label %102

66:                                               ; preds = %2
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @LDT(i32 20, i64 %67)
  br label %102

69:                                               ; preds = %2
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @LDT(i32 21, i64 %70)
  br label %102

72:                                               ; preds = %2
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @LDT(i32 22, i64 %73)
  br label %102

75:                                               ; preds = %2
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @LDT(i32 23, i64 %76)
  br label %102

78:                                               ; preds = %2
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @LDT(i32 24, i64 %79)
  br label %102

81:                                               ; preds = %2
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @LDT(i32 25, i64 %82)
  br label %102

84:                                               ; preds = %2
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @LDT(i32 26, i64 %85)
  br label %102

87:                                               ; preds = %2
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @LDT(i32 27, i64 %88)
  br label %102

90:                                               ; preds = %2
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @LDT(i32 28, i64 %91)
  br label %102

93:                                               ; preds = %2
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @LDT(i32 29, i64 %94)
  br label %102

96:                                               ; preds = %2
  %97 = load i64, i64* %4, align 8
  %98 = call i32 @LDT(i32 30, i64 %97)
  br label %102

99:                                               ; preds = %2
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @LDT(i32 31, i64 %100)
  br label %102

102:                                              ; preds = %2, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9, %6
  ret void
}

declare dso_local i32 @LDT(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
