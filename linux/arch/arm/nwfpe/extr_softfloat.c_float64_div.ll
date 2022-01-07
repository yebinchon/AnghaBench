; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_div.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float64_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float64_default_nan = common dso_local global i32 0, align 4
@float_flag_divbyzero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float64_div(%struct.roundingData* %0, i32 %1, i32 %2) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @extractFloat64Frac(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @extractFloat64Exp(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @extractFloat64Sign(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @extractFloat64Frac(i32 %27)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @extractFloat64Exp(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @extractFloat64Sign(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = xor i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %36, 2047
  br i1 %37, label %38, label %65

38:                                               ; preds = %3
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @propagateFloat64NaN(i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %180

45:                                               ; preds = %38
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %46, 2047
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @propagateFloat64NaN(i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %180

55:                                               ; preds = %48
  %56 = load i32, i32* @float_flag_invalid, align 4
  %57 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %58 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @float64_default_nan, align 4
  store i32 %61, i32* %4, align 4
  br label %180

62:                                               ; preds = %45
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @packFloat64(i32 %63, i32 2047, i32 0)
  store i32 %64, i32* %4, align 4
  br label %180

65:                                               ; preds = %3
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 2047
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @propagateFloat64NaN(i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %180

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @packFloat64(i32 %76, i32 0, i32 0)
  store i32 %77, i32* %4, align 4
  br label %180

78:                                               ; preds = %65
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %78
  %82 = load i32, i32* %15, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @float_flag_invalid, align 4
  %91 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %92 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @float64_default_nan, align 4
  store i32 %95, i32* %4, align 4
  br label %180

96:                                               ; preds = %84
  %97 = load i32, i32* @float_flag_divbyzero, align 4
  %98 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %99 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @packFloat64(i32 %102, i32 2047, i32 0)
  store i32 %103, i32* %4, align 4
  br label %180

104:                                              ; preds = %81
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @normalizeFloat64Subnormal(i32 %105, i32* %12, i32* %15)
  br label %107

107:                                              ; preds = %104, %78
  %108 = load i32, i32* %11, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @packFloat64(i32 %114, i32 0, i32 0)
  store i32 %115, i32* %4, align 4
  br label %180

116:                                              ; preds = %110
  %117 = load i32, i32* %14, align 4
  %118 = call i32 @normalizeFloat64Subnormal(i32 %117, i32* %11, i32* %14)
  br label %119

119:                                              ; preds = %116, %107
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sub nsw i32 %120, %121
  %123 = add nsw i32 %122, 1021
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @LIT64(i32 0)
  %126 = or i32 %124, %125
  %127 = shl i32 %126, 10
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @LIT64(i32 0)
  %130 = or i32 %128, %129
  %131 = shl i32 %130, 11
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp sle i32 %132, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %119
  %138 = load i32, i32* %14, align 4
  %139 = ashr i32 %138, 1
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %137, %119
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @estimateDiv128To64(i32 %143, i32 0, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = and i32 %146, 511
  %148 = icmp sle i32 %147, 2
  br i1 %148, label %149, label %174

149:                                              ; preds = %142
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @mul64To128(i32 %150, i32 %151, i32* %19, i32* %20)
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load i32, i32* %20, align 4
  %156 = call i32 @sub128(i32 %153, i32 0, i32 %154, i32 %155, i32* %17, i32* %18)
  br label %157

157:                                              ; preds = %161, %149
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* %18, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @add128(i32 %164, i32 %165, i32 0, i32 %166, i32* %17, i32* %18)
  br label %157

168:                                              ; preds = %157
  %169 = load i32, i32* %18, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = load i32, i32* %16, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %168, %142
  %175 = load %struct.roundingData*, %struct.roundingData** %5, align 8
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %16, align 4
  %179 = call i32 @roundAndPackFloat64(%struct.roundingData* %175, i32 %176, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %174, %113, %96, %89, %75, %71, %62, %55, %51, %41
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @extractFloat64Frac(i32) #1

declare dso_local i32 @extractFloat64Exp(i32) #1

declare dso_local i32 @extractFloat64Sign(i32) #1

declare dso_local i32 @propagateFloat64NaN(i32, i32) #1

declare dso_local i32 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @normalizeFloat64Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @estimateDiv128To64(i32, i32, i32) #1

declare dso_local i32 @mul64To128(i32, i32, i32*, i32*) #1

declare dso_local i32 @sub128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @add128(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @roundAndPackFloat64(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
