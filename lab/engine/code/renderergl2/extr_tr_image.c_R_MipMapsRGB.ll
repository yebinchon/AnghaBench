; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_MipMapsRGB.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_R_MipMapsRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_MipMapsRGB.downmipSrgbLookup = internal global [256 x float] zeroinitializer, align 16
@R_MipMapsRGB.downmipSrgbLookupSet = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32)* @R_MipMapsRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_MipMapsRGB(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca float, align 4
  %13 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i64*, i64** %4, align 8
  store i64* %14, i64** %13, align 8
  %15 = load i32, i32* @R_MipMapsRGB.downmipSrgbLookupSet, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %23, 2.550000e+02
  %25 = call float @powf(float %24, float 0x40019999A0000000) #2
  %26 = fmul float %25, 2.500000e-01
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %28
  store float %26, float* %29, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %18

33:                                               ; preds = %18
  store i32 1, i32* @R_MipMapsRGB.downmipSrgbLookupSet, align 4
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %193

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %98

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %48, %49
  %51 = ashr i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %94, %47
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %97

55:                                               ; preds = %52
  store i32 3, i32* %9, align 4
  br label %56

56:                                               ; preds = %77, %55
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %56
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %61
  %63 = load float, float* %62, align 4
  %64 = load i64*, i64** %4, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 4
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fadd float %63, %68
  %70 = fmul float %69, 2.000000e+00
  store float %70, float* %12, align 4
  %71 = load float, float* %12, align 4
  %72 = call float @powf(float %71, float 0x3FDD1745C0000000) #2
  %73 = fmul float %72, 2.550000e+02
  %74 = fptoui float %73 to i64
  %75 = load i64*, i64** %13, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %13, align 8
  store i64 %74, i64* %75, align 8
  br label %77

77:                                               ; preds = %59
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %9, align 4
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i32 1
  store i64* %81, i64** %4, align 8
  br label %56

82:                                               ; preds = %56
  %83 = load i64*, i64** %4, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 4
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %84, %87
  %89 = lshr i64 %88, 1
  %90 = load i64*, i64** %13, align 8
  %91 = getelementptr inbounds i64, i64* %90, i32 1
  store i64* %91, i64** %13, align 8
  store i64 %89, i64* %90, align 8
  %92 = load i64*, i64** %4, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 5
  store i64* %93, i64** %4, align 8
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  br label %52

97:                                               ; preds = %52
  br label %193

98:                                               ; preds = %44
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %99, 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %5, align 4
  %102 = ashr i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 1
  store i32 %104, i32* %6, align 4
  %105 = load i64*, i64** %4, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  store i64* %108, i64** %11, align 8
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %182, %98
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %193

113:                                              ; preds = %110
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %178, %113
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %181

118:                                              ; preds = %115
  store i32 3, i32* %9, align 4
  br label %119

119:                                              ; preds = %150, %118
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %157

122:                                              ; preds = %119
  %123 = load i64*, i64** %4, align 8
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %124
  %126 = load float, float* %125, align 4
  %127 = load i64*, i64** %4, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 4
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fadd float %126, %131
  %133 = load i64*, i64** %11, align 8
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %134
  %136 = load float, float* %135, align 4
  %137 = fadd float %132, %136
  %138 = load i64*, i64** %11, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 4
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds [256 x float], [256 x float]* @R_MipMapsRGB.downmipSrgbLookup, i64 0, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fadd float %137, %142
  store float %143, float* %12, align 4
  %144 = load float, float* %12, align 4
  %145 = call float @powf(float %144, float 0x3FDD1745C0000000) #2
  %146 = fmul float %145, 2.550000e+02
  %147 = fptoui float %146 to i64
  %148 = load i64*, i64** %13, align 8
  %149 = getelementptr inbounds i64, i64* %148, i32 1
  store i64* %149, i64** %13, align 8
  store i64 %147, i64* %148, align 8
  br label %150

150:                                              ; preds = %122
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %9, align 4
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %4, align 8
  %155 = load i64*, i64** %11, align 8
  %156 = getelementptr inbounds i64, i64* %155, i32 1
  store i64* %156, i64** %11, align 8
  br label %119

157:                                              ; preds = %119
  %158 = load i64*, i64** %4, align 8
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %4, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 4
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %159, %162
  %164 = load i64*, i64** %11, align 8
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %163, %165
  %167 = load i64*, i64** %11, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 4
  %169 = load i64, i64* %168, align 8
  %170 = add i64 %166, %169
  %171 = lshr i64 %170, 2
  %172 = load i64*, i64** %13, align 8
  %173 = getelementptr inbounds i64, i64* %172, i32 1
  store i64* %173, i64** %13, align 8
  store i64 %171, i64* %172, align 8
  %174 = load i64*, i64** %4, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 5
  store i64* %175, i64** %4, align 8
  %176 = load i64*, i64** %11, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 5
  store i64* %177, i64** %11, align 8
  br label %178

178:                                              ; preds = %157
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %7, align 4
  br label %115

181:                                              ; preds = %115
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i64*, i64** %4, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  store i64* %188, i64** %4, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i64*, i64** %11, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64* %192, i64** %11, align 8
  br label %110

193:                                              ; preds = %40, %97, %110
  ret void
}

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
