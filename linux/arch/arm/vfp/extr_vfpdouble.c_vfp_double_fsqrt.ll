; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fsqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fsqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i64, i32, i32 }

@VFP_NAN = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@vfp_double_default_qnan = common dso_local global %struct.vfp_double zeroinitializer, align 8
@FPSCR_IOC = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sqrt estimate1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sqrt estimate2\00", align 1
@VFP_DOUBLE_LOW_BITS_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fsqrt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_double_fsqrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_fsqrt(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_double, align 8
  %11 = alloca %struct.vfp_double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfp_double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @vfp_get_double(i32 %19)
  %21 = call i32 @vfp_double_unpack(%struct.vfp_double* %10, i32 %20)
  %22 = call i32 @vfp_double_type(%struct.vfp_double* %10)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @VFP_NAN, align 4
  %25 = load i32, i32* @VFP_INFINITY, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %4
  store %struct.vfp_double* %11, %struct.vfp_double** %14, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @VFP_NAN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.vfp_double*, %struct.vfp_double** %14, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @vfp_propagate_nan(%struct.vfp_double* %35, %struct.vfp_double* %10, i32* null, i32 %36)
  store i32 %37, i32* %12, align 4
  br label %48

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %59, %42
  store %struct.vfp_double* %10, %struct.vfp_double** %14, align 8
  store i32 0, i32* %12, align 4
  br label %47

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %71, %44
  store %struct.vfp_double* @vfp_double_default_qnan, %struct.vfp_double** %14, align 8
  %46 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.vfp_double*, %struct.vfp_double** %14, align 8
  %50 = call i32 @vfp_double_pack(%struct.vfp_double* %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @vfp_put_double(i32 %50, i32 %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %171

54:                                               ; preds = %4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @VFP_ZERO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %43

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @VFP_DENORMAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %10)
  br label %67

67:                                               ; preds = %65, %60
  %68 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %45

72:                                               ; preds = %67
  %73 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.vfp_double* %10)
  %74 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1023
  %78 = ashr i32 %77, 1
  %79 = add nsw i32 %78, 1023
  %80 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 32
  %86 = call i64 @vfp_estimate_sqrt_significand(i32 %82, i32 %85)
  %87 = trunc i64 %86 to i32
  %88 = shl i32 %87, 31
  %89 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.vfp_double* %11)
  %91 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 1
  %94 = add nsw i32 1, %93
  %95 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @vfp_estimate_div128to64(i32 %99, i32 0, i32 %101)
  %103 = add nsw i64 2, %102
  %104 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %103
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = call i32 @vfp_double_dump(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.vfp_double* %11)
  %110 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @VFP_DOUBLE_LOW_BITS_MASK, align 4
  %113 = and i32 %111, %112
  %114 = icmp sle i32 %113, 5
  br i1 %114, label %115, label %163

115:                                              ; preds = %72
  %116 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 2
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  store i32 -1, i32* %120, align 4
  br label %162

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 2
  store i32 %124, i32* %122, align 4
  %125 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mul64to128(i32* %15, i32* %16, i32 %126, i32 %128)
  %130 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @sub128(i32* %17, i32* %18, i32 %131, i32 0, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %139, %121
  %136 = load i32, i32* %17, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @shift64left(i32* %15, i32* %16, i32 %144)
  %146 = load i32, i32* %16, align 4
  %147 = or i32 %146, 1
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @add128(i32* %17, i32* %18, i32 %148, i32 %149, i32 %150, i32 %151)
  br label %135

153:                                              ; preds = %135
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %18, align 4
  %156 = or i32 %154, %155
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %153, %119
  br label %163

163:                                              ; preds = %162, %72
  %164 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @vfp_shiftright64jamming(i32 %165, i32 1)
  %167 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @vfp_double_normaliseround(i32 %168, %struct.vfp_double* %11, i32 %169, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %163, %48
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i32 @vfp_double_unpack(%struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_type(%struct.vfp_double*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_double*, %struct.vfp_double*, i32*, i32) #1

declare dso_local i32 @vfp_put_double(i32, i32) #1

declare dso_local i32 @vfp_double_pack(%struct.vfp_double*) #1

declare dso_local i32 @vfp_double_normalise_denormal(%struct.vfp_double*) #1

declare dso_local i32 @vfp_double_dump(i8*, %struct.vfp_double*) #1

declare dso_local i64 @vfp_estimate_sqrt_significand(i32, i32) #1

declare dso_local i64 @vfp_estimate_div128to64(i32, i32, i32) #1

declare dso_local i32 @mul64to128(i32*, i32*, i32, i32) #1

declare dso_local i32 @sub128(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @shift64left(i32*, i32*, i32) #1

declare dso_local i32 @add128(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @vfp_shiftright64jamming(i32, i32) #1

declare dso_local i32 @vfp_double_normaliseround(i32, %struct.vfp_double*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
