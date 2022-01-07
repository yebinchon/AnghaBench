; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fdiv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpdouble.c_vfp_double_fdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfp_double = type { i32, i32, i32 }

@VFP_NAN = common dso_local global i32 0, align 4
@VFP_INFINITY = common dso_local global i32 0, align 4
@VFP_ZERO = common dso_local global i32 0, align 4
@VFP_DENORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fdiv\00", align 1
@FPSCR_DZC = common dso_local global i32 0, align 4
@vfp_double_default_qnan = common dso_local global %struct.vfp_double zeroinitializer, align 4
@FPSCR_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @vfp_double_fdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfp_double_fdiv(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfp_double, align 4
  %11 = alloca %struct.vfp_double, align 4
  %12 = alloca %struct.vfp_double, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vfp_get_double(i32 %20)
  %22 = call i32 @vfp_double_unpack(%struct.vfp_double* %11, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @vfp_get_double(i32 %23)
  %25 = call i32 @vfp_double_unpack(%struct.vfp_double* %12, i32 %24)
  %26 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %27, %29
  %31 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = call i32 @vfp_double_type(%struct.vfp_double* %11)
  store i32 %32, i32* %15, align 4
  %33 = call i32 @vfp_double_type(%struct.vfp_double* %12)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @VFP_NAN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %162

39:                                               ; preds = %4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @VFP_NAN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %170

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @VFP_INFINITY, align 4
  %50 = load i32, i32* @VFP_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %181

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @VFP_INFINITY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %178

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @VFP_ZERO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %176

67:                                               ; preds = %61
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @VFP_INFINITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @VFP_ZERO, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72, %67
  br label %173

78:                                               ; preds = %72
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @VFP_DENORMAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %11)
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @VFP_DENORMAL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @vfp_double_normalise_denormal(%struct.vfp_double* %12)
  br label %92

92:                                               ; preds = %90, %85
  %93 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %94, %96
  %98 = add nsw i32 %97, 1023
  %99 = sub nsw i32 %98, 1
  %100 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 2, %107
  %109 = icmp sle i32 %105, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %92
  %111 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110, %92
  %118 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @vfp_estimate_div128to64(i32 %119, i32 0, i32 %121)
  %123 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 511
  %127 = icmp sle i32 %126, 2
  br i1 %127, label %128, label %158

128:                                              ; preds = %117
  %129 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @mul64to128(i64* %16, i64* %17, i32 %130, i32 %132)
  %134 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %11, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %17, align 8
  %138 = call i32 @sub128(i64* %18, i64* %19, i32 %135, i32 0, i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %142, %128
  %140 = load i64, i64* %18, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load i64, i64* %18, align 8
  %147 = load i64, i64* %19, align 8
  %148 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %12, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @add128(i64* %18, i64* %19, i64 %146, i64 %147, i32 0, i32 %149)
  br label %139

151:                                              ; preds = %139
  %152 = load i64, i64* %19, align 8
  %153 = icmp ne i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %117
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @vfp_double_normaliseround(i32 %159, %struct.vfp_double* %10, i32 %160, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %161, i32* %5, align 4
  br label %186

162:                                              ; preds = %38
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @vfp_propagate_nan(%struct.vfp_double* %10, %struct.vfp_double* %11, %struct.vfp_double* %12, i32 %163)
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %178, %173, %170, %162
  %166 = call i32 @vfp_double_pack(%struct.vfp_double* %10)
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @vfp_put_double(i32 %166, i32 %167)
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %5, align 4
  br label %186

170:                                              ; preds = %44
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @vfp_propagate_nan(%struct.vfp_double* %10, %struct.vfp_double* %12, %struct.vfp_double* %11, i32 %171)
  store i32 %172, i32* %13, align 4
  br label %165

173:                                              ; preds = %77
  %174 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  store i32 0, i32* %175, align 4
  br label %165

176:                                              ; preds = %66
  %177 = load i32, i32* @FPSCR_DZC, align 4
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %176, %60
  %179 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 1
  store i32 2047, i32* %179, align 4
  %180 = getelementptr inbounds %struct.vfp_double, %struct.vfp_double* %10, i32 0, i32 2
  store i32 0, i32* %180, align 4
  br label %165

181:                                              ; preds = %54
  %182 = call i32 @vfp_double_pack(%struct.vfp_double* @vfp_double_default_qnan)
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @vfp_put_double(i32 %182, i32 %183)
  %185 = load i32, i32* @FPSCR_IOC, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %181, %165, %158
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local i32 @vfp_double_unpack(%struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_get_double(i32) #1

declare dso_local i32 @vfp_double_type(%struct.vfp_double*) #1

declare dso_local i32 @vfp_double_normalise_denormal(%struct.vfp_double*) #1

declare dso_local i32 @vfp_estimate_div128to64(i32, i32, i32) #1

declare dso_local i32 @mul64to128(i64*, i64*, i32, i32) #1

declare dso_local i32 @sub128(i64*, i64*, i32, i32, i64, i64) #1

declare dso_local i32 @add128(i64*, i64*, i64, i64, i32, i32) #1

declare dso_local i32 @vfp_double_normaliseround(i32, %struct.vfp_double*, i32, i32, i8*) #1

declare dso_local i32 @vfp_propagate_nan(%struct.vfp_double*, %struct.vfp_double*, %struct.vfp_double*, i32) #1

declare dso_local i32 @vfp_put_double(i32, i32) #1

declare dso_local i32 @vfp_double_pack(%struct.vfp_double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
