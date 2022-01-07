; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_compare.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FPSCR_C = common dso_local global i32 0, align 4
@FPSCR_V = common dso_local global i32 0, align 4
@VFP_DOUBLE_MANTISSA_BITS = common dso_local global i32 0, align 4
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
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @vfp_get_double(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @vfp_double_packed_exponent(i32 %14)
  %16 = icmp eq i32 %15, 2047
  br i1 %16, label %17, label %43

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = call i64 @vfp_double_packed_mantissa(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load i32, i32* @FPSCR_C, align 4
  %23 = load i32, i32* @FPSCR_V, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @vfp_double_packed_mantissa(i32 %30)
  %32 = load i32, i32* @VFP_DOUBLE_MANTISSA_BITS, align 4
  %33 = sub nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  %36 = and i64 %31, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29, %21
  %39 = load i32, i32* @FPSCR_IOC, align 4
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %38, %29
  br label %43

43:                                               ; preds = %42, %17, %4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @vfp_get_double(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @vfp_double_packed_exponent(i32 %46)
  %48 = icmp eq i32 %47, 2047
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @vfp_double_packed_mantissa(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load i32, i32* @FPSCR_C, align 4
  %55 = load i32, i32* @FPSCR_V, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @vfp_double_packed_mantissa(i32 %62)
  %64 = load i32, i32* @VFP_DOUBLE_MANTISSA_BITS, align 4
  %65 = sub nsw i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = shl i64 1, %66
  %68 = and i64 %63, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %61, %53
  %71 = load i32, i32* @FPSCR_IOC, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %61
  br label %75

75:                                               ; preds = %74, %49, %43
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %147

78:                                               ; preds = %75
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @vfp_double_packed_abs(i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82, %78
  %89 = load i32, i32* @FPSCR_Z, align 4
  %90 = load i32, i32* @FPSCR_C, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %146

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = xor i32 %95, %96
  %98 = call i64 @vfp_double_packed_sign(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @vfp_double_packed_sign(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @FPSCR_N, align 4
  %106 = load i32, i32* %11, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %11, align 4
  br label %112

108:                                              ; preds = %100
  %109 = load i32, i32* @FPSCR_C, align 4
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %112

112:                                              ; preds = %108, %104
  br label %145

113:                                              ; preds = %94
  %114 = load i32, i32* %9, align 4
  %115 = call i64 @vfp_double_packed_sign(i32 %114)
  %116 = icmp ne i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp slt i32 %118, %119
  %121 = zext i1 %120 to i32
  %122 = xor i32 %117, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load i32, i32* @FPSCR_N, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %144

128:                                              ; preds = %113
  %129 = load i32, i32* %9, align 4
  %130 = call i64 @vfp_double_packed_sign(i32 %129)
  %131 = icmp ne i64 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = xor i32 %132, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = load i32, i32* @FPSCR_C, align 4
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %139, %128
  br label %144

144:                                              ; preds = %143, %124
  br label %145

145:                                              ; preds = %144, %112
  br label %146

146:                                              ; preds = %145, %88
  br label %147

147:                                              ; preds = %146, %75
  %148 = load i32, i32* %11, align 4
  ret i32 %148
}

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_packed_exponent(i32) #1

declare dso_local i64 @vfp_double_packed_mantissa(i32) #1

declare dso_local i64 @vfp_double_packed_abs(i32) #1

declare dso_local i64 @vfp_double_packed_sign(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
