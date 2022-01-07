; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CullSides.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface.c_CullSides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64*, i64*, %struct.TYPE_11__*, i32*, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32* }

@SYS_VRB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"--- CullSides ---\0A\00", align 1
@g_numHiddenFaces = common dso_local global i64 0, align 8
@g_numCoinFaces = common dso_local global i64 0, align 8
@qtrue = common dso_local global i64 0, align 8
@C_TRANSLUCENT = common dso_local global i32 0, align 4
@C_NODRAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%9d hidden faces culled\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%9d coincident faces culled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CullSides(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %17 = load i32, i32* @SYS_VRB, align 4
  %18 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @g_numHiddenFaces, align 8
  store i64 0, i64* @g_numCoinFaces, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %13, align 8
  br label %22

22:                                               ; preds = %483, %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %487

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %483

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %14, align 8
  br label %35

35:                                               ; preds = %478, %31
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %37 = icmp ne %struct.TYPE_13__* %36, null
  br i1 %37, label %38, label %482

38:                                               ; preds = %35
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %478

44:                                               ; preds = %38
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %478

58:                                               ; preds = %52, %44
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %98, %58
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 3
  br i1 %61, label %62, label %101

62:                                               ; preds = %59
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %69, %76
  br i1 %77, label %94, label %78

78:                                               ; preds = %62
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78, %62
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %78
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %59

101:                                              ; preds = %59
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %478

105:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %106
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %120 = call i32 @SideInBrush(%struct.TYPE_11__* %118, %struct.TYPE_13__* %119)
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %4, align 4
  br label %106

124:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %140, %124
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 %136
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %139 = call i32 @SideInBrush(%struct.TYPE_11__* %137, %struct.TYPE_13__* %138)
  br label %140

140:                                              ; preds = %131
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %125

143:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %474, %143
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %477

150:                                              ; preds = %144
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  store %struct.TYPE_11__* %156, %struct.TYPE_11__** %15, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %11, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %161 = icmp eq %struct.TYPE_10__* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %474

163:                                              ; preds = %150
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %3, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = icmp eq %struct.TYPE_9__* %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %474

172:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %470, %172
  %174 = load i32, i32* %5, align 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %473

179:                                              ; preds = %173
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 %184
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %16, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  store %struct.TYPE_10__* %188, %struct.TYPE_10__** %12, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %190 = icmp eq %struct.TYPE_10__* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %179
  br label %470

192:                                              ; preds = %179
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = icmp eq %struct.TYPE_9__* %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %470

198:                                              ; preds = %192
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %201, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %198
  br label %470

207:                                              ; preds = %198
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @qtrue, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %207
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @qtrue, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %470

220:                                              ; preds = %213, %207
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = and i32 %223, -2
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = and i32 %227, -2
  %229 = icmp ne i32 %224, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %470

231:                                              ; preds = %220
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = icmp ne %struct.TYPE_9__* %234, null
  br i1 %235, label %236, label %251

236:                                              ; preds = %231
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 3
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %236
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 3
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243, %236
  br label %470

251:                                              ; preds = %243, %231
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = icmp ne %struct.TYPE_9__* %254, null
  br i1 %255, label %256, label %271

256:                                              ; preds = %251
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 3
  %259 = load %struct.TYPE_9__*, %struct.TYPE_9__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %256
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263, %256
  br label %470

271:                                              ; preds = %263, %251
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %272

272:                                              ; preds = %295, %271
  %273 = load i32, i32* %6, align 4
  %274 = load i32, i32* %3, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %298

276:                                              ; preds = %272
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @VectorCompare(i32 %281, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %276
  %292 = load i32, i32* %6, align 4
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %3, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %291, %276
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* %6, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %6, align 4
  br label %272

298:                                              ; preds = %272
  %299 = load i32, i32* %8, align 4
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  br label %470

302:                                              ; preds = %298
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %303 = load i32, i32* %8, align 4
  %304 = add nsw i32 %303, 1
  %305 = load i32, i32* %3, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %9, align 4
  br label %311

310:                                              ; preds = %302
  store i32 0, i32* %9, align 4
  br label %311

311:                                              ; preds = %310, %307
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 1
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i64 @CullVectorCompare(i32 %316, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %311
  store i32 1, i32* %10, align 4
  br label %353

327:                                              ; preds = %311
  %328 = load i32, i32* %8, align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* %8, align 4
  %332 = sub nsw i32 %331, 1
  store i32 %332, i32* %9, align 4
  br label %336

333:                                              ; preds = %327
  %334 = load i32, i32* %3, align 4
  %335 = sub nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %333, %330
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = call i64 @CullVectorCompare(i32 %341, i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %336
  store i32 -1, i32* %10, align 4
  br label %352

352:                                              ; preds = %351, %336
  br label %353

353:                                              ; preds = %352, %326
  %354 = load i32, i32* %10, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %353
  br label %470

357:                                              ; preds = %353
  %358 = load i32, i32* %8, align 4
  store i32 %358, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %359

359:                                              ; preds = %397, %357
  %360 = load i32, i32* %6, align 4
  %361 = load i32, i32* %3, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %400

363:                                              ; preds = %359
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i32 0, i32 1
  %366 = load i32*, i32** %365, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 1
  %373 = load i32*, i32** %372, align 8
  %374 = load i32, i32* %7, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @CullVectorCompare(i32 %370, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %363
  store i32 100000, i32* %6, align 4
  br label %381

381:                                              ; preds = %380, %363
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* %7, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %381
  %388 = load i32, i32* %3, align 4
  %389 = sub nsw i32 %388, 1
  store i32 %389, i32* %7, align 4
  br label %396

390:                                              ; preds = %381
  %391 = load i32, i32* %7, align 4
  %392 = load i32, i32* %3, align 4
  %393 = icmp sge i32 %391, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  store i32 0, i32* %7, align 4
  br label %395

395:                                              ; preds = %394, %390
  br label %396

396:                                              ; preds = %395, %387
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %6, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %6, align 4
  br label %359

400:                                              ; preds = %359
  %401 = load i32, i32* %6, align 4
  %402 = icmp sge i32 %401, 100000
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  br label %470

404:                                              ; preds = %400
  %405 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %406 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %429, label %409

409:                                              ; preds = %404
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @C_TRANSLUCENT, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %429, label %416

416:                                              ; preds = %409
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @C_NODRAW, align 4
  %421 = and i32 %419, %420
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %429, label %423

423:                                              ; preds = %416
  %424 = load i64, i64* @qtrue, align 8
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 0
  store i64 %424, i64* %426, align 8
  %427 = load i64, i64* @g_numCoinFaces, align 8
  %428 = add nsw i64 %427, 1
  store i64 %428, i64* @g_numCoinFaces, align 8
  br label %429

429:                                              ; preds = %423, %416, %409, %404
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 8
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = icmp eq i32 %432, %435
  br i1 %436, label %437, label %444

437:                                              ; preds = %429
  %438 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @qtrue, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %470

444:                                              ; preds = %437, %429
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %469, label %449

449:                                              ; preds = %444
  %450 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %451 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @C_TRANSLUCENT, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %469, label %456

456:                                              ; preds = %449
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 4
  %460 = load i32, i32* @C_NODRAW, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %469, label %463

463:                                              ; preds = %456
  %464 = load i64, i64* @qtrue, align 8
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %466 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i32 0, i32 0
  store i64 %464, i64* %466, align 8
  %467 = load i64, i64* @g_numCoinFaces, align 8
  %468 = add nsw i64 %467, 1
  store i64 %468, i64* @g_numCoinFaces, align 8
  br label %469

469:                                              ; preds = %463, %456, %449, %444
  br label %470

470:                                              ; preds = %469, %443, %403, %356, %301, %270, %250, %230, %219, %206, %197, %191
  %471 = load i32, i32* %5, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %5, align 4
  br label %173

473:                                              ; preds = %173
  br label %474

474:                                              ; preds = %473, %171, %162
  %475 = load i32, i32* %4, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %4, align 4
  br label %144

477:                                              ; preds = %144
  br label %478

478:                                              ; preds = %477, %104, %57, %43
  %479 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %480 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %479, i32 0, i32 5
  %481 = load %struct.TYPE_13__*, %struct.TYPE_13__** %480, align 8
  store %struct.TYPE_13__* %481, %struct.TYPE_13__** %14, align 8
  br label %35

482:                                              ; preds = %35
  br label %483

483:                                              ; preds = %482, %30
  %484 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %484, i32 0, i32 5
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %485, align 8
  store %struct.TYPE_13__* %486, %struct.TYPE_13__** %13, align 8
  br label %22

487:                                              ; preds = %22
  %488 = load i32, i32* @SYS_VRB, align 4
  %489 = load i64, i64* @g_numHiddenFaces, align 8
  %490 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %488, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %489)
  %491 = load i32, i32* @SYS_VRB, align 4
  %492 = load i64, i64* @g_numCoinFaces, align 8
  %493 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %491, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %492)
  ret void
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @SideInBrush(%struct.TYPE_11__*, %struct.TYPE_13__*) #1

declare dso_local i64 @VectorCompare(i32, i32) #1

declare dso_local i64 @CullVectorCompare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
