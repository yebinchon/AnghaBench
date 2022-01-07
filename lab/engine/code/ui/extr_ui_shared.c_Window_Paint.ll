; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Window_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Window_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32, i32, i32, i32, i32)*, i32 (double*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32)*, i32 (i32, i32, i32, i32, double*)*, i32 (double**)*, i32 (i32, i32, i32, i32, i32)* }
%struct.TYPE_7__ = type { i64, i64, i32, i32, double*, double*, i32, double*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@debugMode = common dso_local global i64 0, align 8
@DC = common dso_local global %struct.TYPE_8__* null, align 8
@WINDOW_STYLE_FILLED = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@WINDOW_STYLE_GRADIENT = common dso_local global i64 0, align 8
@WINDOW_STYLE_SHADER = common dso_local global i64 0, align 8
@WINDOW_FORECOLORSET = common dso_local global i32 0, align 4
@WINDOW_STYLE_TEAMCOLOR = common dso_local global i64 0, align 8
@WINDOW_STYLE_CINEMATIC = common dso_local global i64 0, align 8
@WINDOW_BORDER_FULL = common dso_local global i64 0, align 8
@WINDOW_BORDER_HORZ = common dso_local global i64 0, align 8
@WINDOW_BORDER_VERT = common dso_local global i64 0, align 8
@WINDOW_BORDER_KCGRADIENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Window_Paint(%struct.TYPE_7__* %0, float %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca double*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  store double* null, double** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %520

15:                                               ; preds = %4
  %16 = load i64, i64* @debugMode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load double*, double** %9, align 8
  %20 = getelementptr inbounds double, double* %19, i64 3
  store double 1.000000e+00, double* %20, align 8
  %21 = load double*, double** %9, align 8
  %22 = getelementptr inbounds double, double* %21, i64 2
  store double 1.000000e+00, double* %22, align 8
  %23 = load double*, double** %9, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  store double 1.000000e+00, double* %24, align 8
  %25 = load double*, double** %9, align 8
  %26 = getelementptr inbounds double, double* %25, i64 0
  store double 1.000000e+00, double* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load double*, double** %9, align 8
  %47 = call i32 %29(i32 %33, i32 %37, i32 %41, i32 %45, i32 1, double* %46)
  br label %48

48:                                               ; preds = %18, %15
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %520

59:                                               ; preds = %53, %48
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = bitcast %struct.TYPE_6__* %10 to i8*
  %63 = bitcast %struct.TYPE_6__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 8 %63, i64 16, i1 false)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %59
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %68, %59
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WINDOW_STYLE_FILLED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %163

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 10
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %146

106:                                              ; preds = %101
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load double*, double** %110, align 8
  %112 = getelementptr inbounds double, double* %111, i64 3
  %113 = load float, float* %7, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 11
  %116 = load float, float* %8, align 4
  %117 = load i32, i32* @qtrue, align 4
  %118 = load float, float* %6, align 4
  %119 = call i32 @Fade(i32* %108, double* %112, float %113, i32* %115, float %116, i32 %117, float %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32 (double*)*, i32 (double*)** %121, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load double*, double** %124, align 8
  %126 = call i32 %122(double* %125)
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 9
  %129 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 10
  %140 = load i32, i32* %139, align 4
  %141 = call i32 %129(i32 %131, i32 %133, i32 %135, i32 %137, i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32 (double*)*, i32 (double*)** %143, align 8
  %145 = call i32 %144(double* null)
  br label %162

146:                                              ; preds = %101
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 7
  %149 = load i32 (i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, double*)** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 4
  %160 = load double*, double** %159, align 8
  %161 = call i32 %149(i32 %151, i32 %153, i32 %155, i32 %157, double* %160)
  br label %162

162:                                              ; preds = %146, %106
  br label %315

163:                                              ; preds = %95
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @WINDOW_STYLE_GRADIENT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load double*, double** %171, align 8
  %173 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %10, double* %172)
  br label %314

174:                                              ; preds = %163
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @WINDOW_STYLE_SHADER, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %215

180:                                              ; preds = %174
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @WINDOW_FORECOLORSET, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %180
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  %190 = load i32 (double*)*, i32 (double*)** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 5
  %193 = load double*, double** %192, align 8
  %194 = call i32 %190(double* %193)
  br label %195

195:                                              ; preds = %187, %180
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 9
  %198 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 10
  %209 = load i32, i32* %208, align 4
  %210 = call i32 %198(i32 %200, i32 %202, i32 %204, i32 %206, i32 %209)
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  %213 = load i32 (double*)*, i32 (double*)** %212, align 8
  %214 = call i32 %213(double* null)
  br label %313

215:                                              ; preds = %174
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @WINDOW_STYLE_TEAMCOLOR, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %215
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 8
  %224 = load i32 (double**)*, i32 (double**)** %223, align 8
  %225 = icmp ne i32 (double**)* %224, null
  br i1 %225, label %226, label %244

226:                                              ; preds = %221
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 8
  %229 = load i32 (double**)*, i32 (double**)** %228, align 8
  %230 = call i32 %229(double** %9)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 7
  %233 = load i32 (i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, double*)** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load double*, double** %9, align 8
  %243 = call i32 %233(i32 %235, i32 %237, i32 %239, i32 %241, double* %242)
  br label %244

244:                                              ; preds = %226, %221
  br label %312

245:                                              ; preds = %215
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @WINDOW_STYLE_CINEMATIC, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %311

251:                                              ; preds = %245
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 6
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %256, label %282

256:                                              ; preds = %251
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %258, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = call i32 %259(i32 %262, i32 %264, i32 %266, i32 %268, i32 %270)
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 6
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 6
  %276 = load i32, i32* %275, align 8
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %281

278:                                              ; preds = %256
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 6
  store i32 -2, i32* %280, align 8
  br label %281

281:                                              ; preds = %278, %256
  br label %282

282:                                              ; preds = %281, %251
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %310

287:                                              ; preds = %282
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 6
  %290 = load i32 (i32)*, i32 (i32)** %289, align 8
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = call i32 %290(i32 %293)
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 5
  %297 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %296, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 %297(i32 %300, i32 %302, i32 %304, i32 %306, i32 %308)
  br label %310

310:                                              ; preds = %287, %282
  br label %311

311:                                              ; preds = %310, %245
  br label %312

312:                                              ; preds = %311, %244
  br label %313

313:                                              ; preds = %312, %195
  br label %314

314:                                              ; preds = %313, %169
  br label %315

315:                                              ; preds = %314, %162
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @WINDOW_BORDER_FULL, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %401

321:                                              ; preds = %315
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* @WINDOW_STYLE_TEAMCOLOR, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %373

327:                                              ; preds = %321
  %328 = load double*, double** %9, align 8
  %329 = getelementptr inbounds double, double* %328, i64 0
  %330 = load double, double* %329, align 8
  %331 = fcmp ogt double %330, 0.000000e+00
  br i1 %331, label %332, label %339

332:                                              ; preds = %327
  %333 = load double*, double** %9, align 8
  %334 = getelementptr inbounds double, double* %333, i64 0
  store double 1.000000e+00, double* %334, align 8
  %335 = load double*, double** %9, align 8
  %336 = getelementptr inbounds double, double* %335, i64 2
  store double 5.000000e-01, double* %336, align 8
  %337 = load double*, double** %9, align 8
  %338 = getelementptr inbounds double, double* %337, i64 1
  store double 5.000000e-01, double* %338, align 8
  br label %346

339:                                              ; preds = %327
  %340 = load double*, double** %9, align 8
  %341 = getelementptr inbounds double, double* %340, i64 2
  store double 1.000000e+00, double* %341, align 8
  %342 = load double*, double** %9, align 8
  %343 = getelementptr inbounds double, double* %342, i64 1
  store double 5.000000e-01, double* %343, align 8
  %344 = load double*, double** %9, align 8
  %345 = getelementptr inbounds double, double* %344, i64 0
  store double 5.000000e-01, double* %345, align 8
  br label %346

346:                                              ; preds = %339, %332
  %347 = load double*, double** %9, align 8
  %348 = getelementptr inbounds double, double* %347, i64 3
  store double 1.000000e+00, double* %348, align 8
  %349 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 4
  %351 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %350, align 8
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load double*, double** %9, align 8
  %372 = call i32 %351(i32 %355, i32 %359, i32 %363, i32 %367, i32 %370, double* %371)
  br label %400

373:                                              ; preds = %321
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 4
  %376 = load i32 (i32, i32, i32, i32, i32, double*)*, i32 (i32, i32, i32, i32, i32, double*)** %375, align 8
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 8
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 8
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 8
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 8
  %396 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 7
  %398 = load double*, double** %397, align 8
  %399 = call i32 %376(i32 %380, i32 %384, i32 %388, i32 %392, i32 %395, double* %398)
  br label %400

400:                                              ; preds = %373, %346
  br label %520

401:                                              ; preds = %315
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @WINDOW_BORDER_HORZ, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %442

407:                                              ; preds = %401
  %408 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load i32 (double*)*, i32 (double*)** %409, align 8
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 7
  %413 = load double*, double** %412, align 8
  %414 = call i32 %410(double* %413)
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 3
  %417 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %416, align 8
  %418 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 8
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %426, i32 0, i32 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 8
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = call i32 %417(i32 %421, i32 %425, i32 %429, i32 %433, i32 %436)
  %438 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 1
  %440 = load i32 (double*)*, i32 (double*)** %439, align 8
  %441 = call i32 %440(double* null)
  br label %519

442:                                              ; preds = %401
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = load i64, i64* @WINDOW_BORDER_VERT, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %483

448:                                              ; preds = %442
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 1
  %451 = load i32 (double*)*, i32 (double*)** %450, align 8
  %452 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 7
  %454 = load double*, double** %453, align 8
  %455 = call i32 %451(double* %454)
  %456 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 2
  %458 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %457, align 8
  %459 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %459, i32 0, i32 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 3
  %470 = load i32, i32* %469, align 4
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 8
  %473 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %472, i32 0, i32 2
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = call i32 %458(i32 %462, i32 %466, i32 %470, i32 %474, i32 %477)
  %479 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DC, align 8
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 1
  %481 = load i32 (double*)*, i32 (double*)** %480, align 8
  %482 = call i32 %481(double* null)
  br label %518

483:                                              ; preds = %442
  %484 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i32 0, i32 1
  %486 = load i64, i64* %485, align 8
  %487 = load i64, i64* @WINDOW_BORDER_KCGRADIENT, align 8
  %488 = icmp eq i64 %486, %487
  br i1 %488, label %489, label %517

489:                                              ; preds = %483
  %490 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 8
  %492 = bitcast %struct.TYPE_6__* %11 to i8*
  %493 = bitcast %struct.TYPE_6__* %491 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %492, i8* align 8 %493, i64 16, i1 false)
  %494 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %496, i32* %497, align 4
  %498 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 7
  %500 = load double*, double** %499, align 8
  %501 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %11, double* %500)
  %502 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %503 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %502, i32 0, i32 8
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = add nsw i32 %505, %509
  %511 = sub nsw i32 %510, 1
  %512 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i32 %511, i32* %512, align 4
  %513 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 7
  %515 = load double*, double** %514, align 8
  %516 = call i32 @GradientBar_Paint(%struct.TYPE_6__* %11, double* %515)
  br label %517

517:                                              ; preds = %489, %483
  br label %518

518:                                              ; preds = %517, %448
  br label %519

519:                                              ; preds = %518, %407
  br label %520

520:                                              ; preds = %14, %58, %519, %400
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Fade(i32*, double*, float, i32*, float, i32, float) #2

declare dso_local i32 @GradientBar_Paint(%struct.TYPE_6__*, double*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
