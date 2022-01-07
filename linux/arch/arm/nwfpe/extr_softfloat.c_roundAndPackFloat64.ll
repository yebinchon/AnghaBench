; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_roundAndPackFloat64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/nwfpe/extr_softfloat.c_roundAndPackFloat64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roundingData = type { i64, i32 }

@float_round_nearest_even = common dso_local global i64 0, align 8
@float_round_to_zero = common dso_local global i64 0, align 8
@float_round_up = common dso_local global i64 0, align 8
@float_round_down = common dso_local global i64 0, align 8
@float_flag_overflow = common dso_local global i32 0, align 4
@float_flag_inexact = common dso_local global i32 0, align 4
@float_detect_tininess = common dso_local global i64 0, align 8
@float_tininess_before_rounding = common dso_local global i64 0, align 8
@float_flag_underflow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.roundingData*, i32, i32, i32)* @roundAndPackFloat64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundAndPackFloat64(%struct.roundingData* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.roundingData*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.roundingData* %0, %struct.roundingData** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %16 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @float_round_nearest_even, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %11, align 4
  store i32 512, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @float_round_to_zero, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %45

29:                                               ; preds = %24
  store i32 1023, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @float_round_up, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %44

38:                                               ; preds = %29
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @float_round_down, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %42, %38
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %28
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 1023
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 2045, %49
  br i1 %50, label %51, label %116

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 2045, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 2045
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @float_flag_overflow, align 4
  %65 = load i32, i32* @float_flag_inexact, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %68 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @packFloat64(i32 %71, i32 2047, i32 0)
  %73 = load i32, i32* %12, align 4
  %74 = icmp eq i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %72, %76
  store i64 %77, i64* %5, align 8
  br label %147

78:                                               ; preds = %57, %54
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load i64, i64* @float_detect_tininess, align 8
  %83 = load i64, i64* @float_tininess_before_rounding, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, -1
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @LIT64(i32 0)
  %93 = icmp slt i32 %91, %92
  br label %94

94:                                               ; preds = %88, %85, %81
  %95 = phi i1 [ true, %85 ], [ true, %81 ], [ %93, %88 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 0, %98
  %100 = call i32 @shift64RightJamming(i32 %97, i32 %99, i32* %9)
  store i32 0, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 1023
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %94
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* @float_flag_underflow, align 4
  %110 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %111 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %105, %94
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %46
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @float_flag_inexact, align 4
  %121 = load %struct.roundingData*, %struct.roundingData** %6, align 8
  %122 = getelementptr inbounds %struct.roundingData, %struct.roundingData* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %119, %116
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = ashr i32 %128, 10
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %13, align 4
  %131 = xor i32 %130, 512
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  store i32 0, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %125
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @packFloat64(i32 %143, i32 %144, i32 %145)
  store i64 %146, i64* %5, align 8
  br label %147

147:                                              ; preds = %142, %63
  %148 = load i64, i64* %5, align 8
  ret i64 %148
}

declare dso_local i64 @packFloat64(i32, i32, i32) #1

declare dso_local i32 @LIT64(i32) #1

declare dso_local i32 @shift64RightJamming(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
