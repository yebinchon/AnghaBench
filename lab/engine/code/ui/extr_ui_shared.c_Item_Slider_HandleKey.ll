; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Slider_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { float, i32 (i64)*, i32 (i8*)*, i32 (i64, i32)*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_9__, i64 }
%struct.TYPE_13__ = type { float, float }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { float, float }
%struct.TYPE_9__ = type { i32, i32 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_14__* null, align 8
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@SLIDER_WIDTH = common dso_local global float 0.000000e+00, align 4
@SLIDER_THUMB_WIDTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"slider handle key exit\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Item_Slider_HandleKey(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %212

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @K_MOUSE1, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @K_MOUSE2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @K_MOUSE3, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %146

32:                                               ; preds = %28, %24, %20
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %12, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %145

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %41, float %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %145

50:                                               ; preds = %38
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %145

58:                                               ; preds = %50
  %59 = load float, float* @SLIDER_WIDTH, align 4
  store float %59, float* %10, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %68, %72
  %74 = add nsw i32 %73, 8
  %75 = sitofp i32 %74 to float
  store float %75, float* %8, align 4
  br label %82

76:                                               ; preds = %58
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 4
  store float %81, float* %8, align 4
  br label %82

82:                                               ; preds = %76, %64
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = bitcast %struct.TYPE_11__* %13 to i8*
  %87 = bitcast %struct.TYPE_11__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 8, i1 false)
  %88 = load float, float* %8, align 4
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store float %88, float* %89, align 4
  %90 = load i64, i64* @SLIDER_THUMB_WIDTH, align 8
  %91 = sitofp i64 %90 to float
  %92 = fdiv float %91, 2.000000e+00
  store float %92, float* %9, align 4
  %93 = load float, float* %9, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %95 = load float, float* %94, align 4
  %96 = fsub float %95, %93
  store float %96, float* %94, align 4
  %97 = load float, float* @SLIDER_WIDTH, align 4
  %98 = load i64, i64* @SLIDER_THUMB_WIDTH, align 8
  %99 = sitofp i64 %98 to float
  %100 = fdiv float %99, 2.000000e+00
  %101 = fadd float %97, %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store float %101, float* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load float, float* %104, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @Rect_ContainsPoint(%struct.TYPE_11__* %13, float %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %144

111:                                              ; preds = %82
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load float, float* %113, align 8
  %115 = load float, float* %8, align 4
  %116 = fsub float %114, %115
  store float %116, float* %11, align 4
  %117 = load float, float* %11, align 4
  %118 = load float, float* %10, align 4
  %119 = fdiv float %117, %118
  store float %119, float* %9, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load float, float* %121, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load float, float* %124, align 4
  %126 = fsub float %122, %125
  %127 = load float, float* %9, align 4
  %128 = fmul float %127, %126
  store float %128, float* %9, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load float, float* %130, align 4
  %132 = load float, float* %9, align 4
  %133 = fadd float %132, %131
  store float %133, float* %9, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  %136 = load i32 (i64, i32)*, i32 (i64, i32)** %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load float, float* %9, align 4
  %141 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %140)
  %142 = call i32 %136(i64 %139, i32 %141)
  %143 = load i32, i32* @qtrue, align 4
  store i32 %143, i32* %4, align 4
  br label %218

144:                                              ; preds = %82
  br label %145

145:                                              ; preds = %144, %50, %38, %32
  br label %211

146:                                              ; preds = %28
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @UI_SelectForKey(i32 %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %210

151:                                              ; preds = %146
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  store %struct.TYPE_13__* %154, %struct.TYPE_13__** %15, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %156 = icmp ne %struct.TYPE_13__* %155, null
  br i1 %156, label %157, label %209

157:                                              ; preds = %151
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = load i32 (i64)*, i32 (i64)** %159, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 %160(i64 %163)
  %165 = sitofp i32 %164 to float
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load float, float* %167, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = load float, float* %170, align 4
  %172 = fsub float %168, %171
  %173 = fdiv float %172, 2.000000e+01
  %174 = load i32, i32* %14, align 4
  %175 = sitofp i32 %174 to float
  %176 = fmul float %173, %175
  %177 = fadd float %165, %176
  store float %177, float* %9, align 4
  %178 = load float, float* %9, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load float, float* %180, align 4
  %182 = fcmp olt float %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %157
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = load float, float* %185, align 4
  store float %186, float* %9, align 4
  br label %198

187:                                              ; preds = %157
  %188 = load float, float* %9, align 4
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load float, float* %190, align 4
  %192 = fcmp ogt float %188, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load float, float* %195, align 4
  store float %196, float* %9, align 4
  br label %197

197:                                              ; preds = %193, %187
  br label %198

198:                                              ; preds = %197, %183
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load i32 (i64, i32)*, i32 (i64, i32)** %200, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load float, float* %9, align 4
  %206 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), float %205)
  %207 = call i32 %201(i64 %204, i32 %206)
  %208 = load i32, i32* @qtrue, align 4
  store i32 %208, i32* %4, align 4
  br label %218

209:                                              ; preds = %151
  br label %210

210:                                              ; preds = %209, %146
  br label %211

211:                                              ; preds = %210, %145
  br label %212

212:                                              ; preds = %211, %3
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** @DC, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 2
  %215 = load i32 (i8*)*, i32 (i8*)** %214, align 8
  %216 = call i32 %215(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %217 = load i32, i32* @qfalse, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %212, %198, %111
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i64 @Rect_ContainsPoint(%struct.TYPE_11__*, float, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @va(i8*, float) #1

declare dso_local i32 @UI_SelectForKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
