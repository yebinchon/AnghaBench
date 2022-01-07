; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_subFloat64Sigs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_subFloat64Sigs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_RM_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @subFloat64Sigs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subFloat64Sigs(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extractFloat64Frac(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @extractFloat64Exp(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @extractFloat64Frac(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @extractFloat64Exp(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = shl i32 %26, 10
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 %28, 10
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %89

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %57

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %111

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %82

51:                                               ; preds = %46
  %52 = call i64 (...) @float_rounding_mode()
  %53 = load i64, i64* @FPSCR_RM_ZERO, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @packFloat64(i32 %55, i32 0, i32 0)
  store i32 %56, i32* %4, align 4
  br label %123

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 2047
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = xor i32 %61, 1
  %63 = call i32 @packFloat64(i32 %62, i32 2047, i32 0)
  store i32 %63, i32* %4, align 4
  br label %123

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %74

70:                                               ; preds = %64
  %71 = call i32 @LIT64(i32 0)
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i32 @shift64RightJamming(i32 %75, i32 %77, i32* %11)
  %79 = call i32 @LIT64(i32 0)
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %74, %50
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = xor i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %116

89:                                               ; preds = %32
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 2047
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %4, align 4
  br label %123

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %14, align 4
  br label %104

100:                                              ; preds = %94
  %101 = call i32 @LIT64(i32 0)
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @shift64RightJamming(i32 %105, i32 %106, i32* %12)
  %108 = call i32 @LIT64(i32 0)
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %104, %45
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %111, %82
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @normalizeRoundAndPackFloat64(i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %116, %92, %60, %51
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i64 @float_rounding_mode(...) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

declare dso_local i32 @normalizeRoundAndPackFloat64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
