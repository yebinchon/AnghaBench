; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_DoRailCore.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_DoRailCore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32***, double**, i32*, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double* }

@tess = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, float, float)* @DoRailCore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoRailCore(i32 %0, i32 %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %14 = load float, float* %9, align 4
  %15 = fdiv float %14, 2.560000e+02
  store float %15, float* %13, align 4
  %16 = call i32 @RB_CHECKOVERFLOW(i32 4, i32 6)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  store i32 %17, i32* %12, align 4
  %18 = load float, float* %10, align 4
  %19 = fneg float %18
  store float %19, float* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load float, float* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 5), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @VectorMA(i32 %20, float %21, i32 %22, i32 %27)
  %29 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32**, i32*** %29, i64 %31
  %33 = load i32**, i32*** %32, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 0, i32* %36, align 4
  %37 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32**, i32*** %37, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  %49 = getelementptr inbounds double, double* %48, i64 0
  %50 = load double, double* %49, align 8
  %51 = fmul double %50, 2.500000e-01
  %52 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double*, double** %52, i64 %54
  %56 = load double*, double** %55, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  store double %51, double* %57, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load double*, double** %60, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = fmul double %63, 2.500000e-01
  %65 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double*, double** %65, i64 %67
  %69 = load double*, double** %68, align 8
  %70 = getelementptr inbounds double, double* %69, i64 1
  store double %64, double* %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load double*, double** %73, align 8
  %75 = getelementptr inbounds double, double* %74, i64 2
  %76 = load double, double* %75, align 8
  %77 = fmul double %76, 2.500000e-01
  %78 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double*, double** %78, i64 %80
  %82 = load double*, double** %81, align 8
  %83 = getelementptr inbounds double, double* %82, i64 2
  store double %77, double* %83, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %86 = load i32, i32* %6, align 4
  %87 = load float, float* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 5), align 8
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VectorMA(i32 %86, float %87, i32 %88, i32 %93)
  %95 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32**, i32*** %95, i64 %97
  %99 = load i32**, i32*** %98, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i64 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 0, i32* %102, align 4
  %103 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32**, i32*** %103, i64 %105
  %107 = load i32**, i32*** %106, align 8
  %108 = getelementptr inbounds i32*, i32** %107, i64 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load double*, double** %113, align 8
  %115 = getelementptr inbounds double, double* %114, i64 0
  %116 = load double, double* %115, align 8
  %117 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds double*, double** %117, i64 %119
  %121 = load double*, double** %120, align 8
  %122 = getelementptr inbounds double, double* %121, i64 0
  store double %116, double* %122, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load double*, double** %125, align 8
  %127 = getelementptr inbounds double, double* %126, i64 1
  %128 = load double, double* %127, align 8
  %129 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double*, double** %129, i64 %131
  %133 = load double*, double** %132, align 8
  %134 = getelementptr inbounds double, double* %133, i64 1
  store double %128, double* %134, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load double*, double** %137, align 8
  %139 = getelementptr inbounds double, double* %138, i64 2
  %140 = load double, double* %139, align 8
  %141 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double*, double** %141, i64 %143
  %145 = load double*, double** %144, align 8
  %146 = getelementptr inbounds double, double* %145, i64 2
  store double %140, double* %146, align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %149 = load i32, i32* %7, align 4
  %150 = load float, float* %10, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 5), align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @VectorMA(i32 %149, float %150, i32 %151, i32 %156)
  %158 = load float, float* %13, align 4
  %159 = fptosi float %158 to i32
  %160 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32**, i32*** %160, i64 %162
  %164 = load i32**, i32*** %163, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 %159, i32* %167, align 4
  %168 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32**, i32*** %168, i64 %170
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 0, i32* %175, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load double*, double** %178, align 8
  %180 = getelementptr inbounds double, double* %179, i64 0
  %181 = load double, double* %180, align 8
  %182 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double*, double** %182, i64 %184
  %186 = load double*, double** %185, align 8
  %187 = getelementptr inbounds double, double* %186, i64 0
  store double %181, double* %187, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load double*, double** %190, align 8
  %192 = getelementptr inbounds double, double* %191, i64 1
  %193 = load double, double* %192, align 8
  %194 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double*, double** %194, i64 %196
  %198 = load double*, double** %197, align 8
  %199 = getelementptr inbounds double, double* %198, i64 1
  store double %193, double* %199, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load double*, double** %202, align 8
  %204 = getelementptr inbounds double, double* %203, i64 2
  %205 = load double, double* %204, align 8
  %206 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double*, double** %206, i64 %208
  %210 = load double*, double** %209, align 8
  %211 = getelementptr inbounds double, double* %210, i64 2
  store double %205, double* %211, align 8
  %212 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %214 = load i32, i32* %7, align 4
  %215 = load float, float* %11, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 5), align 8
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @VectorMA(i32 %214, float %215, i32 %216, i32 %221)
  %223 = load float, float* %13, align 4
  %224 = fptosi float %223 to i32
  %225 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32**, i32*** %225, i64 %227
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %224, i32* %232, align 4
  %233 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 1), align 8
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32**, i32*** %233, i64 %235
  %237 = load i32**, i32*** %236, align 8
  %238 = getelementptr inbounds i32*, i32** %237, i64 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  store i32 1, i32* %240, align 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = load double*, double** %243, align 8
  %245 = getelementptr inbounds double, double* %244, i64 0
  %246 = load double, double* %245, align 8
  %247 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double*, double** %247, i64 %249
  %251 = load double*, double** %250, align 8
  %252 = getelementptr inbounds double, double* %251, i64 0
  store double %246, double* %252, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load double*, double** %255, align 8
  %257 = getelementptr inbounds double, double* %256, i64 1
  %258 = load double, double* %257, align 8
  %259 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double*, double** %259, i64 %261
  %263 = load double*, double** %262, align 8
  %264 = getelementptr inbounds double, double* %263, i64 1
  store double %258, double* %264, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @backEnd, i32 0, i32 0), align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load double*, double** %267, align 8
  %269 = getelementptr inbounds double, double* %268, i64 2
  %270 = load double, double* %269, align 8
  %271 = load double**, double*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 2), align 8
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double*, double** %271, i64 %273
  %275 = load double*, double** %274, align 8
  %276 = getelementptr inbounds double, double* %275, i64 2
  store double %270, double* %276, align 8
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 0), align 8
  %279 = load i32, i32* %12, align 4
  %280 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %279, i32* %284, align 4
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  store i32 %286, i32* %291, align 4
  %292 = load i32, i32* %12, align 4
  %293 = add nsw i32 %292, 2
  %294 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %297 = sext i32 %295 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %293, i32* %298, align 4
  %299 = load i32, i32* %12, align 4
  %300 = add nsw i32 %299, 2
  %301 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  store i32 %300, i32* %305, align 4
  %306 = load i32, i32* %12, align 4
  %307 = add nsw i32 %306, 1
  %308 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  store i32 %307, i32* %312, align 4
  %313 = load i32, i32* %12, align 4
  %314 = add nsw i32 %313, 3
  %315 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 3), align 8
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tess, i32 0, i32 4), align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 %314, i32* %319, align 4
  ret void
}

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
