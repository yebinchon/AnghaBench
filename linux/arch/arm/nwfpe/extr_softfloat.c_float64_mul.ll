; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_mul.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float64_default_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_mul(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.roundingData*, align 8
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
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @extractFloat64Frac(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @extractFloat64Exp(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @extractFloat64Sign(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @extractFloat64Frac(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @extractFloat64Exp(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @extractFloat64Sign(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = xor i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 2047
  br i1 %34, label %35, label %63

35:                                               ; preds = %3
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %39, 2047
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @propagateFloat64NaN(i32 %45, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %148

48:                                               ; preds = %41, %38
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @float_flag_invalid, align 4
  %55 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %56 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @float64_default_nan, align 4
  store i32 %59, i32* %4, align 4
  br label %148

60:                                               ; preds = %48
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @packFloat64(i32 %61, i32 2047, i32 0)
  store i32 %62, i32* %4, align 4
  br label %148

63:                                               ; preds = %3
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 2047
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @propagateFloat64NaN(i32 %70, i32 %71)
  store i32 %72, i32* %4, align 4
  br label %148

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @float_flag_invalid, align 4
  %80 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %81 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* @float64_default_nan, align 4
  store i32 %84, i32* %4, align 4
  br label %148

85:                                               ; preds = %73
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @packFloat64(i32 %86, i32 2047, i32 0)
  store i32 %87, i32* %4, align 4
  br label %148

88:                                               ; preds = %63
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @packFloat64(i32 %95, i32 0, i32 0)
  store i32 %96, i32* %4, align 4
  br label %148

97:                                               ; preds = %91
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @normalizeFloat64Subnormal(i32 %98, i32* %11, i32* %14)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @packFloat64(i32 %107, i32 0, i32 0)
  store i32 %108, i32* %4, align 4
  br label %148

109:                                              ; preds = %103
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @normalizeFloat64Subnormal(i32 %110, i32* %12, i32* %15)
  br label %112

112:                                              ; preds = %109, %100
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1023
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @LIT64(i32 0)
  %119 = or i32 %117, %118
  %120 = shl i32 %119, 10
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @LIT64(i32 0)
  %123 = or i32 %121, %122
  %124 = shl i32 %123, 11
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @mul64To128(i32 %125, i32 %126, i32* %16, i32* %17)
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = load i32, i32* %16, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = shl i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = icmp sle i64 0, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %112
  %138 = load i32, i32* %16, align 4
  %139 = shl i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %137, %112
  %143 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @roundAndPackFloat64(%struct.roundingData* %143, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %142, %106, %94, %85, %78, %69, %60, %53, %44
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @roundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
