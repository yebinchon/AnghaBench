; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_MC_UnCompress.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_animation.c_MC_UnCompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC_BITS_X = common dso_local global i32 0, align 4
@MC_SCALE_X = common dso_local global float 0.000000e+00, align 4
@MC_BITS_Y = common dso_local global i32 0, align 4
@MC_SCALE_Y = common dso_local global float 0.000000e+00, align 4
@MC_BITS_Z = common dso_local global i32 0, align 4
@MC_SCALE_Z = common dso_local global float 0.000000e+00, align 4
@MC_BITS_VECT = common dso_local global i32 0, align 4
@MC_SCALE_VECT = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MC_UnCompress([4 x float]* %0, i8* %1) #0 {
  %3 = alloca [4 x float]*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store [4 x float]* %0, [4 x float]** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i16*
  %8 = getelementptr inbounds i16, i16* %7, i64 0
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @MC_BITS_X, align 4
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sitofp i32 %16 to float
  %18 = load float, float* @MC_SCALE_X, align 4
  %19 = fmul float %17, %18
  %20 = load [4 x float]*, [4 x float]** %3, align 8
  %21 = getelementptr inbounds [4 x float], [4 x float]* %20, i64 0
  %22 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 3
  store float %19, float* %22, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to i16*
  %25 = getelementptr inbounds i16, i16* %24, i64 1
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @MC_BITS_Y, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sitofp i32 %33 to float
  %35 = load float, float* @MC_SCALE_Y, align 4
  %36 = fmul float %34, %35
  %37 = load [4 x float]*, [4 x float]** %3, align 8
  %38 = getelementptr inbounds [4 x float], [4 x float]* %37, i64 1
  %39 = getelementptr inbounds [4 x float], [4 x float]* %38, i64 0, i64 3
  store float %36, float* %39, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = bitcast i8* %40 to i16*
  %42 = getelementptr inbounds i16, i16* %41, i64 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @MC_BITS_Z, align 4
  %46 = sub nsw i32 %45, 1
  %47 = shl i32 1, %46
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sitofp i32 %50 to float
  %52 = load float, float* @MC_SCALE_Z, align 4
  %53 = fmul float %51, %52
  %54 = load [4 x float]*, [4 x float]** %3, align 8
  %55 = getelementptr inbounds [4 x float], [4 x float]* %54, i64 2
  %56 = getelementptr inbounds [4 x float], [4 x float]* %55, i64 0, i64 3
  store float %53, float* %56, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = bitcast i8* %57 to i16*
  %59 = getelementptr inbounds i16, i16* %58, i64 3
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @MC_BITS_VECT, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float, float* @MC_SCALE_VECT, align 4
  %70 = fmul float %68, %69
  %71 = load [4 x float]*, [4 x float]** %3, align 8
  %72 = getelementptr inbounds [4 x float], [4 x float]* %71, i64 0
  %73 = getelementptr inbounds [4 x float], [4 x float]* %72, i64 0, i64 0
  store float %70, float* %73, align 4
  %74 = load i8*, i8** %4, align 8
  %75 = bitcast i8* %74 to i16*
  %76 = getelementptr inbounds i16, i16* %75, i64 4
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @MC_BITS_VECT, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 1, %80
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float, float* @MC_SCALE_VECT, align 4
  %87 = fmul float %85, %86
  %88 = load [4 x float]*, [4 x float]** %3, align 8
  %89 = getelementptr inbounds [4 x float], [4 x float]* %88, i64 0
  %90 = getelementptr inbounds [4 x float], [4 x float]* %89, i64 0, i64 1
  store float %87, float* %90, align 4
  %91 = load i8*, i8** %4, align 8
  %92 = bitcast i8* %91 to i16*
  %93 = getelementptr inbounds i16, i16* %92, i64 5
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @MC_BITS_VECT, align 4
  %97 = sub nsw i32 %96, 1
  %98 = shl i32 1, %97
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sitofp i32 %101 to float
  %103 = load float, float* @MC_SCALE_VECT, align 4
  %104 = fmul float %102, %103
  %105 = load [4 x float]*, [4 x float]** %3, align 8
  %106 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0
  %107 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 2
  store float %104, float* %107, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = bitcast i8* %108 to i16*
  %110 = getelementptr inbounds i16, i16* %109, i64 6
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @MC_BITS_VECT, align 4
  %114 = sub nsw i32 %113, 1
  %115 = shl i32 1, %114
  %116 = load i32, i32* %5, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sitofp i32 %118 to float
  %120 = load float, float* @MC_SCALE_VECT, align 4
  %121 = fmul float %119, %120
  %122 = load [4 x float]*, [4 x float]** %3, align 8
  %123 = getelementptr inbounds [4 x float], [4 x float]* %122, i64 1
  %124 = getelementptr inbounds [4 x float], [4 x float]* %123, i64 0, i64 0
  store float %121, float* %124, align 4
  %125 = load i8*, i8** %4, align 8
  %126 = bitcast i8* %125 to i16*
  %127 = getelementptr inbounds i16, i16* %126, i64 7
  %128 = load i16, i16* %127, align 2
  %129 = zext i16 %128 to i32
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* @MC_BITS_VECT, align 4
  %131 = sub nsw i32 %130, 1
  %132 = shl i32 1, %131
  %133 = load i32, i32* %5, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = sitofp i32 %135 to float
  %137 = load float, float* @MC_SCALE_VECT, align 4
  %138 = fmul float %136, %137
  %139 = load [4 x float]*, [4 x float]** %3, align 8
  %140 = getelementptr inbounds [4 x float], [4 x float]* %139, i64 1
  %141 = getelementptr inbounds [4 x float], [4 x float]* %140, i64 0, i64 1
  store float %138, float* %141, align 4
  %142 = load i8*, i8** %4, align 8
  %143 = bitcast i8* %142 to i16*
  %144 = getelementptr inbounds i16, i16* %143, i64 8
  %145 = load i16, i16* %144, align 2
  %146 = zext i16 %145 to i32
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @MC_BITS_VECT, align 4
  %148 = sub nsw i32 %147, 1
  %149 = shl i32 1, %148
  %150 = load i32, i32* %5, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = sitofp i32 %152 to float
  %154 = load float, float* @MC_SCALE_VECT, align 4
  %155 = fmul float %153, %154
  %156 = load [4 x float]*, [4 x float]** %3, align 8
  %157 = getelementptr inbounds [4 x float], [4 x float]* %156, i64 1
  %158 = getelementptr inbounds [4 x float], [4 x float]* %157, i64 0, i64 2
  store float %155, float* %158, align 4
  %159 = load i8*, i8** %4, align 8
  %160 = bitcast i8* %159 to i16*
  %161 = getelementptr inbounds i16, i16* %160, i64 9
  %162 = load i16, i16* %161, align 2
  %163 = zext i16 %162 to i32
  store i32 %163, i32* %5, align 4
  %164 = load i32, i32* @MC_BITS_VECT, align 4
  %165 = sub nsw i32 %164, 1
  %166 = shl i32 1, %165
  %167 = load i32, i32* %5, align 4
  %168 = sub nsw i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = sitofp i32 %169 to float
  %171 = load float, float* @MC_SCALE_VECT, align 4
  %172 = fmul float %170, %171
  %173 = load [4 x float]*, [4 x float]** %3, align 8
  %174 = getelementptr inbounds [4 x float], [4 x float]* %173, i64 2
  %175 = getelementptr inbounds [4 x float], [4 x float]* %174, i64 0, i64 0
  store float %172, float* %175, align 4
  %176 = load i8*, i8** %4, align 8
  %177 = bitcast i8* %176 to i16*
  %178 = getelementptr inbounds i16, i16* %177, i64 10
  %179 = load i16, i16* %178, align 2
  %180 = zext i16 %179 to i32
  store i32 %180, i32* %5, align 4
  %181 = load i32, i32* @MC_BITS_VECT, align 4
  %182 = sub nsw i32 %181, 1
  %183 = shl i32 1, %182
  %184 = load i32, i32* %5, align 4
  %185 = sub nsw i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load i32, i32* %5, align 4
  %187 = sitofp i32 %186 to float
  %188 = load float, float* @MC_SCALE_VECT, align 4
  %189 = fmul float %187, %188
  %190 = load [4 x float]*, [4 x float]** %3, align 8
  %191 = getelementptr inbounds [4 x float], [4 x float]* %190, i64 2
  %192 = getelementptr inbounds [4 x float], [4 x float]* %191, i64 0, i64 1
  store float %189, float* %192, align 4
  %193 = load i8*, i8** %4, align 8
  %194 = bitcast i8* %193 to i16*
  %195 = getelementptr inbounds i16, i16* %194, i64 11
  %196 = load i16, i16* %195, align 2
  %197 = zext i16 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* @MC_BITS_VECT, align 4
  %199 = sub nsw i32 %198, 1
  %200 = shl i32 1, %199
  %201 = load i32, i32* %5, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = sitofp i32 %203 to float
  %205 = load float, float* @MC_SCALE_VECT, align 4
  %206 = fmul float %204, %205
  %207 = load [4 x float]*, [4 x float]** %3, align 8
  %208 = getelementptr inbounds [4 x float], [4 x float]* %207, i64 2
  %209 = getelementptr inbounds [4 x float], [4 x float]* %208, i64 0, i64 2
  store float %206, float* %209, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
