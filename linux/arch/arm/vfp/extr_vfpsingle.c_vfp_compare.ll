; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_compare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpsingle.c_vfp_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_C = common dso_local global i32 0, align 4
@FPSCR_V = common dso_local global i32 0, align 4
@VFP_SINGLE_MANTISSA_BITS = common dso_local global i32 0, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@FPSCR_Z = common dso_local global i32 0, align 4
@FPSCR_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_compare(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @vfp_get_float(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @vfp_single_packed_exponent(i32 %13)
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %41

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @vfp_single_packed_mantissa(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* @FPSCR_C, align 4
  %22 = load i32, i32* @FPSCR_V, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @vfp_single_packed_mantissa(i32 %29)
  %31 = load i32, i32* @VFP_SINGLE_MANTISSA_BITS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28, %20
  %37 = load i32, i32* @FPSCR_IOC, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %36, %28
  br label %41

41:                                               ; preds = %40, %16, %4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @vfp_single_packed_exponent(i32 %42)
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @vfp_single_packed_mantissa(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load i32, i32* @FPSCR_C, align 4
  %51 = load i32, i32* @FPSCR_V, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @vfp_single_packed_mantissa(i32 %58)
  %60 = load i32, i32* @VFP_SINGLE_MANTISSA_BITS, align 4
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* @FPSCR_IOC, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %65, %57
  br label %70

70:                                               ; preds = %69, %45, %41
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %142

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %78, %79
  %81 = call i64 @vfp_single_packed_abs(i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77, %73
  %84 = load i32, i32* @FPSCR_Z, align 4
  %85 = load i32, i32* @FPSCR_C, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %141

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = xor i32 %90, %91
  %93 = call i64 @vfp_single_packed_sign(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @vfp_single_packed_sign(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* @FPSCR_N, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @FPSCR_C, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %103, %99
  br label %140

108:                                              ; preds = %89
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @vfp_single_packed_sign(i32 %109)
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = xor i32 %112, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load i32, i32* @FPSCR_N, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %139

123:                                              ; preds = %108
  %124 = load i32, i32* %9, align 4
  %125 = call i64 @vfp_single_packed_sign(i32 %124)
  %126 = icmp ne i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp sgt i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = xor i32 %127, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load i32, i32* @FPSCR_C, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %134, %123
  br label %139

139:                                              ; preds = %138, %119
  br label %140

140:                                              ; preds = %139, %107
  br label %141

141:                                              ; preds = %140, %83
  br label %142

142:                                              ; preds = %141, %70
  %143 = load i32, i32* %10, align 4
  ret i32 %143
}

declare dso_local i32 @vfp_get_float(i32) #1

declare dso_local i32 @vfp_single_packed_exponent(i32) #1

declare dso_local i32 @vfp_single_packed_mantissa(i32) #1

declare dso_local i64 @vfp_single_packed_abs(i32) #1

declare dso_local i64 @vfp_single_packed_sign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
