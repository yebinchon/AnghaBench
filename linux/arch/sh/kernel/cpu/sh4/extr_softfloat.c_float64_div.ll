; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_div.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_softfloat.c_float64_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_CAUSE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_div(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @extractFloat64Frac(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @extractFloat64Exp(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @extractFloat64Sign(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @extractFloat64Frac(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @extractFloat64Exp(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @extractFloat64Sign(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 2047
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 2047
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @packFloat64(i32 %41, i32 2047, i32 0)
  store i32 %42, i32* %3, align 4
  br label %141

43:                                               ; preds = %2
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 2047
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @packFloat64(i32 %47, i32 0, i32 0)
  store i32 %48, i32* %3, align 4
  br label %141

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %12, align 4
  %58 = or i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @FPSCR_CAUSE_INVALID, align 4
  %62 = call i32 @float_raise(i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @packFloat64(i32 %64, i32 2047, i32 0)
  store i32 %65, i32* %3, align 4
  br label %141

66:                                               ; preds = %52
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @normalizeFloat64Subnormal(i32 %67, i32* %10, i32* %13)
  br label %69

69:                                               ; preds = %66, %49
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @packFloat64(i32 %76, i32 0, i32 0)
  store i32 %77, i32* %3, align 4
  br label %141

78:                                               ; preds = %72
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @normalizeFloat64Subnormal(i32 %79, i32* %9, i32* %12)
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %82, %83
  %85 = add nsw i32 %84, 1021
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @LIT64(i32 0)
  %88 = or i32 %86, %87
  %89 = shl i32 %88, 10
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @LIT64(i32 0)
  %92 = or i32 %90, %91
  %93 = shl i32 %92, 11
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sle i32 %94, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %81
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 1
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %99, %81
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @estimateDiv128To64(i32 %105, i32 0, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %108, 511
  %110 = icmp sle i32 %109, 2
  br i1 %110, label %111, label %136

111:                                              ; preds = %104
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @mul64To128(i32 %112, i32 %113, i32* %17, i32* %18)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @sub128(i32 %115, i32 0, i32 %116, i32 %117, i32* %15, i32* %16)
  br label %119

119:                                              ; preds = %123, %111
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @add128(i32 %126, i32 %127, i32 0, i32 %128, i32* %15, i32* %16)
  br label %119

130:                                              ; preds = %119
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %130, %104
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @roundAndPackFloat64(i32 %137, i32 %138, i32 %139)
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %136, %75, %63, %46, %40
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @float_raise(i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @estimateDiv128To64(i32, i32, i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @roundAndPackFloat64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
