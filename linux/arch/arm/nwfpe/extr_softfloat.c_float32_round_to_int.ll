; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_round_to_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_round_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32, i32 }

@float_flag_inexact = common dso_local global i32 0, align 4
@float_round_to_zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_round_to_int(%struct.roundingData* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.roundingData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @extractFloat32Exp(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 150, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @extractFloat32Frac(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @propagateFloat32NaN(i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %144

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %3, align 4
  br label %144

29:                                               ; preds = %2
  %30 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %31 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %33, 126
  br i1 %34, label %35, label %75

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %3, align 4
  br label %144

42:                                               ; preds = %35
  %43 = load i32, i32* @float_flag_inexact, align 4
  %44 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %45 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @extractFloat32Sign(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %72 [
    i32 129, label %51
    i32 130, label %62
    i32 128, label %67
  ]

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 126
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @extractFloat32Frac(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @packFloat32(i32 %59, i32 127, i32 0)
  store i32 %60, i32* %3, align 4
  br label %144

61:                                               ; preds = %54, %51
  br label %72

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 -1082130432, i32 0
  store i32 %66, i32* %3, align 4
  br label %144

67:                                               ; preds = %42
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 -2147483648, i32 1065353216
  store i32 %71, i32* %3, align 4
  br label %144

72:                                               ; preds = %42, %61
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @packFloat32(i32 %73, i32 0, i32 0)
  store i32 %74, i32* %3, align 4
  br label %144

75:                                               ; preds = %29
  store i64 1, i64* %8, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 150, %76
  %78 = load i64, i64* %8, align 8
  %79 = zext i32 %77 to i64
  %80 = shl i64 %78, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = sub nsw i64 %81, 1
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 129
  br i1 %85, label %86, label %106

86:                                               ; preds = %75
  %87 = load i64, i64* %8, align 8
  %88 = ashr i64 %87, 1
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %9, align 8
  %96 = and i64 %94, %95
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %86
  %99 = load i64, i64* %8, align 8
  %100 = xor i64 %99, -1
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = and i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %98, %86
  br label %126

106:                                              ; preds = %75
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @float_round_to_zero, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @extractFloat32Sign(i32 %111)
  %113 = load i32, i32* %10, align 4
  %114 = icmp eq i32 %113, 128
  %115 = zext i1 %114 to i32
  %116 = xor i32 %112, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %110
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %118, %110
  br label %125

125:                                              ; preds = %124, %106
  br label %126

126:                                              ; preds = %125, %105
  %127 = load i64, i64* %9, align 8
  %128 = xor i64 %127, -1
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = and i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %126
  %137 = load i32, i32* @float_flag_inexact, align 4
  %138 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %139 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %126
  %143 = load i32, i32* %11, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %72, %67, %62, %58, %40, %27, %23
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i64 @extractFloat32Frac(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @extractFloat32Sign(i32) #1

declare dso_local i32 @packFloat32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
