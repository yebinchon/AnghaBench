; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_RecursiveWorldNode.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_world.c_R_RecursiveWorldNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64**, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { float, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i64, i64*, i64*, i32, i32, i32**, %struct.TYPE_14__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { float, i32 }

@tr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@r_nocull = common dso_local global %struct.TYPE_17__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32)* @R_RecursiveWorldNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_RecursiveWorldNode(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %15

15:                                               ; preds = %212, %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0), align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %366

22:                                               ; preds = %15
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_nocull, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %124, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 1), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = call i32 @BoxOnPlaneSide(i64* %34, i64* %37, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %366

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, -2
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 1), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call i32 @BoxOnPlaneSide(i64* %58, i64* %61, i32* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %366

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, -3
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 1), align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @BoxOnPlaneSide(i64* %82, i64* %85, i32* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %366

92:                                               ; preds = %79
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, -5
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98, %75
  %100 = load i32, i32* %5, align 4
  %101 = and i32 %100, 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %99
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 1), align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = call i32 @BoxOnPlaneSide(i64* %106, i64* %109, i32* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %366

116:                                              ; preds = %103
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, -9
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %99
  br label %124

124:                                              ; preds = %123, %22
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, -1
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %213

130:                                              ; preds = %124
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %196

135:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %192, %135
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 3, i32 0), align 8
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %195

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %9, align 4
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %191

146:                                              ; preds = %140
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 3, i32 1), align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %149
  store %struct.TYPE_15__* %150, %struct.TYPE_15__** %10, align 8
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 7
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call float @DotProduct(i32 %153, i32 %158)
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load float, float* %163, align 4
  %165 = fsub float %159, %164
  store float %165, float* %11, align 4
  %166 = load float, float* %11, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load float, float* %168, align 4
  %170 = fneg float %169
  %171 = fcmp ogt float %166, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %146
  %173 = load i32, i32* %9, align 4
  %174 = shl i32 1, %173
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %174
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %146
  %179 = load float, float* %11, align 4
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load float, float* %181, align 4
  %183 = fcmp olt float %179, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* %9, align 4
  %186 = shl i32 1, %185
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %186
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %136

195:                                              ; preds = %136
  br label %196

196:                                              ; preds = %195, %130
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %199, i64 0
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %204 = load i32, i32* %203, align 4
  call void @R_RecursiveWorldNode(%struct.TYPE_14__* %201, i32 %202, i32 %204)
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 6
  %207 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %207, i64 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  store %struct.TYPE_14__* %209, %struct.TYPE_14__** %4, align 8
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %196
  br i1 true, label %15, label %213

213:                                              ; preds = %212, %129
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 2, i32 0), align 8
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 2, i32 0), align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %222 = getelementptr inbounds i64*, i64** %221, i64 0
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp slt i64 %220, %225
  br i1 %226, label %227, label %237

227:                                              ; preds = %213
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %234 = getelementptr inbounds i64*, i64** %233, i64 0
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 0
  store i64 %232, i64* %236, align 8
  br label %237

237:                                              ; preds = %227, %213
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %244 = getelementptr inbounds i64*, i64** %243, i64 0
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 1
  %247 = load i64, i64* %246, align 8
  %248 = icmp slt i64 %242, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %237
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %256 = getelementptr inbounds i64*, i64** %255, i64 0
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 1
  store i64 %254, i64* %258, align 8
  br label %259

259:                                              ; preds = %249, %237
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 2
  %264 = load i64, i64* %263, align 8
  %265 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %266 = getelementptr inbounds i64*, i64** %265, i64 0
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp slt i64 %264, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %259
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 2
  %276 = load i64, i64* %275, align 8
  %277 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %278 = getelementptr inbounds i64*, i64** %277, i64 0
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 2
  store i64 %276, i64* %280, align 8
  br label %281

281:                                              ; preds = %271, %259
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  %284 = load i64*, i64** %283, align 8
  %285 = getelementptr inbounds i64, i64* %284, i64 0
  %286 = load i64, i64* %285, align 8
  %287 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %288 = getelementptr inbounds i64*, i64** %287, i64 1
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp sgt i64 %286, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %281
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 2
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %300 = getelementptr inbounds i64*, i64** %299, i64 1
  %301 = load i64*, i64** %300, align 8
  %302 = getelementptr inbounds i64, i64* %301, i64 0
  store i64 %298, i64* %302, align 8
  br label %303

303:                                              ; preds = %293, %281
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 2
  %306 = load i64*, i64** %305, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 1
  %308 = load i64, i64* %307, align 8
  %309 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %310 = getelementptr inbounds i64*, i64** %309, i64 1
  %311 = load i64*, i64** %310, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp sgt i64 %308, %313
  br i1 %314, label %315, label %325

315:                                              ; preds = %303
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 2
  %318 = load i64*, i64** %317, align 8
  %319 = getelementptr inbounds i64, i64* %318, i64 1
  %320 = load i64, i64* %319, align 8
  %321 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %322 = getelementptr inbounds i64*, i64** %321, i64 1
  %323 = load i64*, i64** %322, align 8
  %324 = getelementptr inbounds i64, i64* %323, i64 1
  store i64 %320, i64* %324, align 8
  br label %325

325:                                              ; preds = %315, %303
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  %328 = load i64*, i64** %327, align 8
  %329 = getelementptr inbounds i64, i64* %328, i64 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %332 = getelementptr inbounds i64*, i64** %331, i64 1
  %333 = load i64*, i64** %332, align 8
  %334 = getelementptr inbounds i64, i64* %333, i64 2
  %335 = load i64, i64* %334, align 8
  %336 = icmp sgt i64 %330, %335
  br i1 %336, label %337, label %347

337:                                              ; preds = %325
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 2
  %340 = load i64*, i64** %339, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 2
  %342 = load i64, i64* %341, align 8
  %343 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 1, i32 0), align 8
  %344 = getelementptr inbounds i64*, i64** %343, i64 1
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 2
  store i64 %342, i64* %346, align 8
  br label %347

347:                                              ; preds = %337, %325
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 5
  %350 = load i32**, i32*** %349, align 8
  store i32** %350, i32*** %14, align 8
  %351 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %12, align 4
  br label %354

354:                                              ; preds = %358, %347
  %355 = load i32, i32* %12, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %12, align 4
  %357 = icmp ne i32 %355, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %354
  %359 = load i32**, i32*** %14, align 8
  %360 = load i32*, i32** %359, align 8
  store i32* %360, i32** %13, align 8
  %361 = load i32*, i32** %13, align 8
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @R_AddWorldSurface(i32* %361, i32 %362)
  %364 = load i32**, i32*** %14, align 8
  %365 = getelementptr inbounds i32*, i32** %364, i32 1
  store i32** %365, i32*** %14, align 8
  br label %354

366:                                              ; preds = %21, %43, %67, %91, %115, %354
  ret void
}

declare dso_local i32 @BoxOnPlaneSide(i64*, i64*, i32*) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @R_AddWorldSurface(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
