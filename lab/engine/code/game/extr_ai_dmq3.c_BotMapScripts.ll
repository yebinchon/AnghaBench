; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotMapScripts.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotMapScripts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i32, i64, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"mapname\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"q3tourney6\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"q3tourney6_ctf\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"mpq3tourney6\00", align 1
@TFL_FUNCBOB = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@level = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@qtrue = common dso_local global i32 0, align 4
@BFL_IDEALVIEWSET = common dso_local global i32 0, align 4
@CHARACTERISTIC_AIM_ACCURACY = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotMapScripts(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %14 = call i32 @trap_GetServerinfo(i8* %13, i32 1024)
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %17 = call i32 @Info_ValueForKey(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @strncpy(i8* %15, i32 %17, i32 127)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 127
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %21 = call i32 @Q_stricmp(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %1
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %25 = call i32 @Q_stricmp(i8* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %29 = call i32 @Q_stricmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %317, label %31

31:                                               ; preds = %27, %23, %1
  store i64* inttoptr (i64 694 to i64*), i64** %10, align 8
  store i64* inttoptr (i64 968 to i64*), i64** %11, align 8
  store i64* inttoptr (i64 304 to i64*), i64** %12, align 8
  %32 = load i32, i32* @TFL_FUNCBOB, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %39 = call i32 @Q_stricmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 64
  store i64 %45, i64* %43, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 64
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %41, %31
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %113

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %11, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %60
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %70
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %85, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %80
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %90
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %11, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %317

111:                                              ; preds = %100, %90
  br label %112

112:                                              ; preds = %111, %80, %70
  br label %113

113:                                              ; preds = %112, %60, %50
  %114 = load i32, i32* @qfalse, align 4
  store i32 %114, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %218, %113
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @level, i32 0, i32 0), align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %221

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %218

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @BotEntityInfo(i32 %127, %struct.TYPE_9__* %8)
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %218

133:                                              ; preds = %126
  %134 = call i64 @EntityIsDead(%struct.TYPE_9__* %8)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136, %133
  br label %218

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %148, %151
  br i1 %152, label %153, label %217

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %11, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %217

162:                                              ; preds = %153
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64*, i64** %10, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp sgt i64 %166, %169
  br i1 %170, label %171, label %216

171:                                              ; preds = %162
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %11, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp slt i64 %175, %178
  br i1 %179, label %180, label %216

180:                                              ; preds = %171
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** %10, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %184, %187
  br i1 %188, label %189, label %215

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64*, i64** %11, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %189
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i64 @BotSameTeam(%struct.TYPE_8__* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @qfalse, align 4
  store i32 %204, i32* %6, align 4
  br label %221

205:                                              ; preds = %198
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = load i32, i32* @qtrue, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %211, %205
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214, %189, %180
  br label %216

216:                                              ; preds = %215, %171, %162
  br label %217

217:                                              ; preds = %216, %153, %144
  br label %218

218:                                              ; preds = %217, %143, %132, %125
  %219 = load i32, i32* %5, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %5, align 4
  br label %115

221:                                              ; preds = %203, %115
  %222 = load i32, i32* %6, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %316

224:                                              ; preds = %221
  %225 = load i32, i32* @BFL_IDEALVIEWSET, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 8
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  %230 = load i64*, i64** %12, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = call i32 @VectorSubtract(i64* %230, i32 %233, i64* %234)
  %236 = load i64*, i64** %9, align 8
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 4
  %239 = load i32*, i32** %238, align 8
  %240 = call i32 @vectoangles(i64* %236, i32* %239)
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @CHARACTERISTIC_AIM_ACCURACY, align 4
  %245 = call float @trap_Characteristic_BFloat(i32 %243, i32 %244, i32 0, i32 1)
  store float %245, float* %7, align 4
  %246 = call i32 (...) @crandom()
  %247 = mul nsw i32 8, %246
  %248 = sitofp i32 %247 to float
  %249 = load float, float* %7, align 4
  %250 = fsub float 1.000000e+00, %249
  %251 = fmul float %248, %250
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = load i64, i64* @PITCH, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sitofp i32 %257 to float
  %259 = fadd float %258, %251
  %260 = fptosi float %259 to i32
  store i32 %260, i32* %256, align 4
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 4
  %263 = load i32*, i32** %262, align 8
  %264 = load i64, i64* @PITCH, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i8* @AngleMod(i32 %266)
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 4
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @PITCH, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32 %268, i32* %273, align 4
  %274 = call i32 (...) @crandom()
  %275 = mul nsw i32 8, %274
  %276 = sitofp i32 %275 to float
  %277 = load float, float* %7, align 4
  %278 = fsub float 1.000000e+00, %277
  %279 = fmul float %276, %278
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @YAW, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = sitofp i32 %285 to float
  %287 = fadd float %286, %279
  %288 = fptosi float %287 to i32
  store i32 %288, i32* %284, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 4
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @YAW, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i8* @AngleMod(i32 %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 4
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* @YAW, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  store i32 %296, i32* %301, align 4
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 4
  %307 = load i32*, i32** %306, align 8
  %308 = call i64 @InFieldOfVision(i32 %304, i32 20, i32* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %224
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @trap_EA_Attack(i32 %313)
  br label %315

315:                                              ; preds = %310, %224
  br label %316

316:                                              ; preds = %315, %221
  br label %317

317:                                              ; preds = %110, %316, %27
  ret void
}

declare dso_local i32 @trap_GetServerinfo(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @EntityIsDead(%struct.TYPE_9__*) #1

declare dso_local i64 @BotSameTeam(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @VectorSubtract(i64*, i32, i64*) #1

declare dso_local i32 @vectoangles(i64*, i32*) #1

declare dso_local float @trap_Characteristic_BFloat(i32, i32, i32, i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i8* @AngleMod(i32) #1

declare dso_local i64 @InFieldOfVision(i32, i32, i32*) #1

declare dso_local i32 @trap_EA_Attack(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
