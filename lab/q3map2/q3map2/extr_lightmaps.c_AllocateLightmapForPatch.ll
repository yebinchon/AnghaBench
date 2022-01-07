; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps.c_AllocateLightmapForPatch.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_lightmaps.c_AllocateLightmapForPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_17__ = type { float* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__* }

@LIGHTMAP_WIDTH = common dso_local global i32 0, align 4
@LIGHTMAP_HEIGHT = common dso_local global i32 0, align 4
@c_exactLightmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Entity %i, brush %i: Lightmap allocation failed\00", align 1
@numLightmaps = common dso_local global i64 0, align 8
@originalWidths = common dso_local global i32* null, align 8
@originalHeights = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AllocateLightmapForPatch(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %21 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %17, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %18, align 8
  %25 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 9
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %6, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %40, align 8
  %41 = bitcast %struct.TYPE_15__* %13 to { i64, %struct.TYPE_17__* }*
  %42 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %41, i32 0, i32 1
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = call %struct.TYPE_15__* @SubdivideMesh(i64 %43, %struct.TYPE_17__* %45, i32 8, i32 999)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %16, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %48 = bitcast %struct.TYPE_15__* %47 to { i64, %struct.TYPE_17__* }*
  %49 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, %struct.TYPE_17__* }, { i64, %struct.TYPE_17__* }* %48, i32 0, i32 1
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = call i32 @PutMeshOnCurve(i64 %50, %struct.TYPE_17__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %55 = call %struct.TYPE_15__* @RemoveLinearMeshColumnsRows(%struct.TYPE_15__* %54)
  store %struct.TYPE_15__* %55, %struct.TYPE_15__** %15, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %57 = call i32 @FreeMesh(%struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %20, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %64 = call %struct.TYPE_15__* @SubdivideMeshQuads(%struct.TYPE_15__* %61, i32 %62, i32 %63, i32* %24, i32* %27)
  store %struct.TYPE_15__* %64, %struct.TYPE_15__** %14, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %72 = call i32 @FreeMesh(%struct.TYPE_15__* %71)
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* @c_exactLightmap, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* @c_exactLightmap, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @AllocLMBlock(i32 %78, i32 %79, i32* %9, i32* %10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %1
  %83 = call i32 (...) @PrepareNewLightmap()
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @AllocLMBlock(i32 %84, i32 %85, i32* %9, i32* %10)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @Error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %88, %82
  br label %101

101:                                              ; preds = %100, %1
  %102 = load i64, i64* @numLightmaps, align 8
  %103 = sub nsw i64 %102, 1
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 7
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %234, %101
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %237

124:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i32*, i32** @originalWidths, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %3, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %142

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %125

142:                                              ; preds = %137, %125
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp sge i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %146, %142
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %150, %151
  %153 = sitofp i32 %152 to float
  store float %153, float* %11, align 4
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %230, %149
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %233

160:                                              ; preds = %154
  store i32 0, i32* %5, align 4
  br label %161

161:                                              ; preds = %175, %160
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = load i32*, i32** @originalHeights, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %178

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %161

178:                                              ; preds = %173, %161
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp sge i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %182, %178
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %186, %187
  %189 = sitofp i32 %188 to float
  store float %189, float* %12, align 4
  %190 = load float, float* %11, align 4
  %191 = fpext float %190 to double
  %192 = fadd double %191, 5.000000e-01
  %193 = load i32, i32* @LIGHTMAP_WIDTH, align 4
  %194 = sitofp i32 %193 to double
  %195 = fdiv double %192, %194
  %196 = fptrunc double %195 to float
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %199, %202
  %204 = add nsw i32 %198, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load float*, float** %207, align 8
  %209 = getelementptr inbounds float, float* %208, i64 0
  store float %196, float* %209, align 4
  %210 = load float, float* %12, align 4
  %211 = fpext float %210 to double
  %212 = fadd double %211, 5.000000e-01
  %213 = load i32, i32* @LIGHTMAP_HEIGHT, align 4
  %214 = sitofp i32 %213 to double
  %215 = fdiv double %212, %214
  %216 = fptrunc double %215 to float
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %218 = load i32, i32* %3, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %219, %222
  %224 = add nsw i32 %218, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load float*, float** %227, align 8
  %229 = getelementptr inbounds float, float* %228, i64 1
  store float %216, float* %229, align 4
  br label %230

230:                                              ; preds = %185
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %154

233:                                              ; preds = %154
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %3, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %3, align 4
  br label %118

237:                                              ; preds = %118
  %238 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %238)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_15__* @SubdivideMesh(i64, %struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_17__*) #2

declare dso_local %struct.TYPE_15__* @RemoveLinearMeshColumnsRows(%struct.TYPE_15__*) #2

declare dso_local i32 @FreeMesh(%struct.TYPE_15__*) #2

declare dso_local %struct.TYPE_15__* @SubdivideMeshQuads(%struct.TYPE_15__*, i32, i32, i32*, i32*) #2

declare dso_local i32 @AllocLMBlock(i32, i32, i32*, i32*) #2

declare dso_local i32 @PrepareNewLightmap(...) #2

declare dso_local i32 @Error(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
