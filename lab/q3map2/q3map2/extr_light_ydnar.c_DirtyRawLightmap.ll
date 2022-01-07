; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_DirtyRawLightmap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_DirtyRawLightmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64*, i32, i32, i32, i8*, i8*, i32, i32, i8*, i8* }

@numRawLightmaps = common dso_local global i32 0, align 4
@rawLightmaps = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@qfalse = common dso_local global i8* null, align 8
@lightSurfaces = common dso_local global i64* null, align 8
@DEFAULT_INHIBIT_RADIUS = common dso_local global i32 0, align 4
@surfaceInfos = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DirtyRawLightmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @numRawLightmaps, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %246

22:                                               ; preds = %1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @rawLightmaps, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i64 %25
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %15, align 8
  %27 = load i8*, i8** @qtrue, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 10
  store i8* %27, i8** %28, align 8
  %29 = load i8*, i8** @qfalse, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 9
  store i8* %29, i8** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i64*, i64** @lightSurfaces, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  store i64* %43, i64** %44, align 8
  %45 = load i32, i32* @DEFAULT_INHIBIT_RADIUS, align 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load i8*, i8** @qfalse, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** @qfalse, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store i8* %49, i8** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %75, %22
  %52 = load i32, i32* %3, align 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** @surfaceInfos, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %63
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %16, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i8*, i8** @qtrue, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  store i8* %72, i8** %73, align 8
  br label %78

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %51

78:                                               ; preds = %71, %51
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %128, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32* @SUPER_CLUSTER(i32 %93, i32 %94)
  store i32* %95, i32** %8, align 8
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call float* @SUPER_ORIGIN(i32 %96, i32 %97)
  store float* %98, float** %9, align 8
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call float* @SUPER_NORMAL(i32 %99, i32 %100)
  store float* %101, float** %10, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call float* @SUPER_DIRT(i32 %102, i32 %103)
  store float* %104, float** %11, align 8
  %105 = load float*, float** %11, align 8
  store float 0.000000e+00, float* %105, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %124

110:                                              ; preds = %92
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  %114 = load float*, float** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @VectorCopy(float* %114, i32 %116)
  %118 = load float*, float** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @VectorCopy(float* %118, i32 %120)
  %122 = call float @DirtForSample(%struct.TYPE_9__* %17)
  %123 = load float*, float** %11, align 8
  store float %122, float* %123, align 4
  br label %124

124:                                              ; preds = %110, %109
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %86

127:                                              ; preds = %86
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  br label %79

131:                                              ; preds = %79
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %243, %131
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %246

138:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %239, %138
  %140 = load i32, i32* %4, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %242

145:                                              ; preds = %139
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32* @SUPER_CLUSTER(i32 %146, i32 %147)
  store i32* %148, i32** %8, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call float* @SUPER_DIRT(i32 %149, i32 %150)
  store float* %151, float** %11, align 8
  %152 = load float*, float** %11, align 8
  %153 = load float, float* %152, align 4
  store float %153, float* %13, align 4
  store float 1.000000e+00, float* %14, align 4
  %154 = load i32, i32* %5, align 4
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %156

156:                                              ; preds = %227, %145
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, 1
  %160 = icmp sle i32 %157, %159
  br i1 %160, label %161, label %230

161:                                              ; preds = %156
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = icmp sge i32 %165, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164, %161
  br label %227

171:                                              ; preds = %164
  %172 = load i32, i32* %4, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %219, %171
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 1
  %178 = icmp sle i32 %175, %177
  br i1 %178, label %179, label %222

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %196, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %182
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %4, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192, %182, %179
  br label %219

197:                                              ; preds = %192, %188
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32* @SUPER_CLUSTER(i32 %198, i32 %199)
  store i32* %200, i32** %8, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call float* @SUPER_DIRT(i32 %201, i32 %202)
  store float* %203, float** %12, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %197
  %208 = load float*, float** %12, align 8
  %209 = load float, float* %208, align 4
  %210 = fcmp ole float %209, 0.000000e+00
  br i1 %210, label %211, label %212

211:                                              ; preds = %207, %197
  br label %219

212:                                              ; preds = %207
  %213 = load float*, float** %12, align 8
  %214 = load float, float* %213, align 4
  %215 = load float, float* %13, align 4
  %216 = fadd float %215, %214
  store float %216, float* %13, align 4
  %217 = load float, float* %14, align 4
  %218 = fadd float %217, 1.000000e+00
  store float %218, float* %14, align 4
  br label %219

219:                                              ; preds = %212, %211, %196
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  br label %174

222:                                              ; preds = %174
  %223 = load float, float* %14, align 4
  %224 = fcmp ole float %223, 0.000000e+00
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %230

226:                                              ; preds = %222
  br label %227

227:                                              ; preds = %226, %170
  %228 = load i32, i32* %7, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %7, align 4
  br label %156

230:                                              ; preds = %225, %156
  %231 = load float, float* %14, align 4
  %232 = fcmp ole float %231, 0.000000e+00
  br i1 %232, label %233, label %234

233:                                              ; preds = %230
  br label %239

234:                                              ; preds = %230
  %235 = load float, float* %13, align 4
  %236 = load float, float* %14, align 4
  %237 = fdiv float %235, %236
  %238 = load float*, float** %11, align 8
  store float %237, float* %238, align 4
  br label %239

239:                                              ; preds = %234, %233
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %4, align 4
  br label %139

242:                                              ; preds = %139
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %5, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %5, align 4
  br label %132

246:                                              ; preds = %21, %132
  ret void
}

declare dso_local i32* @SUPER_CLUSTER(i32, i32) #1

declare dso_local float* @SUPER_ORIGIN(i32, i32) #1

declare dso_local float* @SUPER_NORMAL(i32, i32) #1

declare dso_local float* @SUPER_DIRT(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local float @DirtForSample(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
