; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_BotLongTermGoal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmnet.c_BotLongTermGoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, double*, i32, i32, i32, i32, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@MAX_MESSAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lead_stop\00", align 1
@CHAT_TELL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"followme\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotLongTermGoal(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @MAX_MESSAGE_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %275

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %275, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (...) @FloatTime()
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = trunc i64 %18 to i32
  %41 = call i32 @EasyClientName(i32 %39, i8* %20, i32 %40)
  %42 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41, i32* null)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CHAT_TELL, align 4
  %50 = call i32 @trap_BotEnterChat(i32 %45, i32 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @BotGetLongTermGoal(%struct.TYPE_8__* %53, i32 %54, i32 %55, i32* %56)
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %281

58:                                               ; preds = %28
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 0, %66
  %68 = call i32 (...) @FloatTime()
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %63
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = trunc i64 %18 to i32
  %76 = call i32 @EasyClientName(i32 %74, i8* %20, i32 %75)
  %77 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32* null)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @CHAT_TELL, align 4
  %85 = call i32 @trap_BotEnterChat(i32 %80, i32 %83, i32 %84)
  %86 = call i32 (...) @FloatTime()
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %70, %63, %58
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BotEntityInfo(i32 %92, %struct.TYPE_9__* %10)
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @BotPointAreaNum(i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @trap_AAS_AreaReachability(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 9
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 4
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 9
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @VectorCopy(i32 %119, i32 %123)
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @VectorSet(i32 %128, i32 -8, i32 -8, i32 -8)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 9
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @VectorSet(i32 %133, i32 8, i32 8, i32 8)
  br label %135

135:                                              ; preds = %107, %103, %97
  br label %136

136:                                              ; preds = %135, %89
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @BotEntityVisible(i32 %139, i32 %142, i32 %145, i32 360, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %136
  %152 = call i32 (...) @FloatTime()
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %136
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (...) @FloatTime()
  %160 = sub nsw i32 %159, 1
  %161 = icmp slt i32 %158, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = call i32 (...) @FloatTime()
  %164 = add nsw i32 %163, 2
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %155
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @VectorSubtract(i32 %170, i32 %174, i32 %175)
  %177 = load i32, i32* %15, align 4
  %178 = call float @VectorLengthSquared(i32 %177)
  store float %178, float* %13, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (...) @FloatTime()
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %223

184:                                              ; preds = %167
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 (...) @FloatTime()
  %189 = sub nsw i32 %188, 20
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %184
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = trunc i64 %18 to i32
  %197 = call i32 @EasyClientName(i32 %195, i8* %20, i32 %196)
  %198 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %197, i32* null)
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 7
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @CHAT_TELL, align 4
  %206 = call i32 @trap_BotEnterChat(i32 %201, i32 %204, i32 %205)
  %207 = call i32 (...) @FloatTime()
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %191, %184
  %211 = load float, float* %13, align 4
  %212 = call float @Square(i32 100)
  %213 = fcmp olt float %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 0, i32* %216, align 8
  br label %217

217:                                              ; preds = %214, %210
  %218 = load i32*, i32** %9, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 9
  %221 = call i32 @memcpy(i32* %218, %struct.TYPE_10__* %220, i32 4)
  %222 = load i32, i32* @qtrue, align 4
  store i32 %222, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %281

223:                                              ; preds = %167
  %224 = load float, float* %13, align 4
  %225 = call float @Square(i32 500)
  %226 = fcmp ogt float %224, %225
  br i1 %226, label %227, label %273

227:                                              ; preds = %223
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (...) @FloatTime()
  %232 = sub nsw i32 %231, 20
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %227
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 4
  %239 = trunc i64 %18 to i32
  %240 = call i32 @EasyClientName(i32 %238, i8* %20, i32 %239)
  %241 = call i32 @BotAI_BotInitialChat(%struct.TYPE_8__* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %240, i32* null)
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @CHAT_TELL, align 4
  %249 = call i32 @trap_BotEnterChat(i32 %244, i32 %247, i32 %248)
  %250 = call i32 (...) @FloatTime()
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %234, %227
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @VectorSubtract(i32 %255, i32 %258, i32 %259)
  %261 = load i32, i32* %15, align 4
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 4
  %264 = load double*, double** %263, align 8
  %265 = call i32 @vectoangles(i32 %261, double* %264)
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 4
  %268 = load double*, double** %267, align 8
  %269 = getelementptr inbounds double, double* %268, i64 2
  %270 = load double, double* %269, align 8
  %271 = fmul double %270, 5.000000e-01
  store double %271, double* %269, align 8
  %272 = load i32, i32* @qfalse, align 4
  store i32 %272, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %281

273:                                              ; preds = %223
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274, %25, %4
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* %8, align 4
  %279 = load i32*, i32** %9, align 8
  %280 = call i32 @BotGetLongTermGoal(%struct.TYPE_8__* %276, i32 %277, i32 %278, i32* %279)
  store i32 %280, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %281

281:                                              ; preds = %275, %253, %217, %35
  %282 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %282)
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FloatTime(...) #2

declare dso_local i32 @BotAI_BotInitialChat(%struct.TYPE_8__*, i8*, i32, i32*) #2

declare dso_local i32 @EasyClientName(i32, i8*, i32) #2

declare dso_local i32 @trap_BotEnterChat(i32, i32, i32) #2

declare dso_local i32 @BotGetLongTermGoal(%struct.TYPE_8__*, i32, i32, i32*) #2

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @BotPointAreaNum(i32) #2

declare dso_local i64 @trap_AAS_AreaReachability(i32) #2

declare dso_local i32 @VectorCopy(i32, i32) #2

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #2

declare dso_local i64 @BotEntityVisible(i32, i32, i32, i32, i32) #2

declare dso_local i32 @VectorSubtract(i32, i32, i32) #2

declare dso_local float @VectorLengthSquared(i32) #2

declare dso_local float @Square(i32) #2

declare dso_local i32 @memcpy(i32*, %struct.TYPE_10__*, i32) #2

declare dso_local i32 @vectoangles(i32, double*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
