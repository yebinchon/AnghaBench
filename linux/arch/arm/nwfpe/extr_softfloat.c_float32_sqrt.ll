; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_sqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_float32_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i32 }

@float_flag_invalid = common dso_local global i32 0, align 4
@float32_default_nan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @float32_sqrt(%struct.roundingData* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.roundingData*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @extractFloat32Frac(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extractFloat32Exp(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @extractFloat32Sign(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @propagateFloat32NaN(i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  br label %123

27:                                               ; preds = %21
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %27
  %33 = load i32, i32* @float_flag_invalid, align 4
  %34 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %35 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @float32_default_nan, align 4
  store i32 %38, i32* %3, align 4
  br label %123

39:                                               ; preds = %2
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %3, align 4
  br label %123

49:                                               ; preds = %42
  %50 = load i32, i32* @float_flag_invalid, align 4
  %51 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %52 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* @float32_default_nan, align 4
  store i32 %55, i32* %3, align 4
  br label %123

56:                                               ; preds = %39
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %123

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @normalizeFloat32Subnormal(i32 %64, i32* %7, i32* %9)
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 127
  %69 = ashr i32 %68, 1
  %70 = add nsw i32 %69, 126
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, 8388608
  %73 = shl i32 %72, 8
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @estimateSqrt32(i32 %74, i32 %75)
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 127
  %80 = icmp sle i32 %79, 5
  br i1 %80, label %81, label %116

81:                                               ; preds = %66
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 -1, i32* %10, align 4
  br label %115

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 1
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, %87
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 %90, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %9, align 4
  %94 = shl i32 %93, 32
  %95 = load i32, i32* %12, align 4
  %96 = sub nsw i32 %94, %95
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %101, %85
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 1
  %106 = or i32 %105, 1
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %97

109:                                              ; preds = %97
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %10, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %109, %84
  br label %116

116:                                              ; preds = %115, %66
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @shift32RightJamming(i32 %117, i32 1, i32* %10)
  %119 = load %struct.roundingData*, %struct.roundingData** %4, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @roundAndPackFloat32(%struct.roundingData* %119, i32 0, i32 %120, i32 %121)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %62, %49, %47, %32, %30, %24
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @extractFloat32Frac(i32) #1

declare dso_local i32 @extractFloat32Exp(i32) #1

declare dso_local i64 @extractFloat32Sign(i32) #1

declare dso_local i32 @propagateFloat32NaN(i32, i32) #1

declare dso_local i32 @normalizeFloat32Subnormal(i32, i32*, i32*) #1

declare dso_local i32 @estimateSqrt32(i32, i32) #1

declare dso_local i32 @shift32RightJamming(i32, i32, i32*) #1

declare dso_local i32 @roundAndPackFloat32(%struct.roundingData*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
