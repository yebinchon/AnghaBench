; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Bind_HandleKey.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_Bind_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (i32, i8*)*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@g_waitingForKey = common dso_local global i64 0, align 8
@K_MOUSE1 = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_10__* null, align 8
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@K_JOY1 = common dso_local global i32 0, align 4
@K_JOY2 = common dso_local global i32 0, align 4
@K_JOY3 = common dso_local global i32 0, align 4
@K_JOY4 = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@g_bindItem = common dso_local global %struct.TYPE_8__* null, align 8
@K_CHAR_FLAG = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@g_bindings = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@g_bindCount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Item_Bind_HandleKey(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @g_waitingForKey, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @K_MOUSE1, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @Rect_ContainsPoint(i32* %22, i32 %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %19, %15
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @K_ENTER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @K_KP_ENTER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @K_JOY1, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @K_JOY2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @K_JOY3, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @K_JOY4, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %47, %43, %39, %35, %31, %19
  %56 = load i64, i64* @qtrue, align 8
  store i64 %56, i64* @g_waitingForKey, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** @g_bindItem, align 8
  br label %58

58:                                               ; preds = %55, %51, %12
  %59 = load i64, i64* @qtrue, align 8
  store i64 %59, i64* %4, align 8
  br label %333

60:                                               ; preds = %3
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @g_bindItem, align 8
  %62 = icmp eq %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @qtrue, align 8
  store i64 %64, i64* %4, align 8
  br label %333

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @K_CHAR_FLAG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @qtrue, align 8
  store i64 %71, i64* %4, align 8
  br label %333

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  switch i32 %73, label %140 [
    i32 128, label %74
    i32 129, label %77
    i32 96, label %138
  ]

74:                                               ; preds = %72
  %75 = load i64, i64* @qfalse, align 8
  store i64 %75, i64* @g_waitingForKey, align 8
  %76 = load i64, i64* @qtrue, align 8
  store i64 %76, i64* %4, align 8
  br label %333

77:                                               ; preds = %72
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BindingIDFromName(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %133

84:                                               ; preds = %77
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %108

92:                                               ; preds = %84
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32 (i32, i8*)*, i32 (i32, i8*)** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %95(i32 %101, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  store i32 -1, i32* %107, align 4
  br label %108

108:                                              ; preds = %92, %84
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %132

116:                                              ; preds = %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32 (i32, i8*)*, i32 (i32, i8*)** %118, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 %119(i32 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  store i32 -1, i32* %131, align 4
  br label %132

132:                                              ; preds = %116, %108
  br label %133

133:                                              ; preds = %132, %77
  %134 = load i64, i64* @qtrue, align 8
  %135 = call i32 @Controls_SetConfig(i64 %134)
  %136 = load i64, i64* @qfalse, align 8
  store i64 %136, i64* @g_waitingForKey, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @g_bindItem, align 8
  %137 = load i64, i64* @qtrue, align 8
  store i64 %137, i64* %4, align 8
  br label %333

138:                                              ; preds = %72
  %139 = load i64, i64* @qtrue, align 8
  store i64 %139, i64* %4, align 8
  br label %333

140:                                              ; preds = %72
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %195

144:                                              ; preds = %141
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %191, %144
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @g_bindCount, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %194

149:                                              ; preds = %145
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %149
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  store i32 -1, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %149
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %164
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32 -1, i32* %189, align 4
  br label %190

190:                                              ; preds = %173, %164
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %145

194:                                              ; preds = %145
  br label %195

195:                                              ; preds = %194, %141
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @BindingIDFromName(i32 %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, -1
  br i1 %201, label %202, label %328

202:                                              ; preds = %195
  %203 = load i32, i32* %6, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %254

205:                                              ; preds = %202
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, -1
  br i1 %212, label %213, label %229

213:                                              ; preds = %205
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32 (i32, i8*)*, i32 (i32, i8*)** %215, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 %216(i32 %222, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %225 = load i32, i32* %8, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  store i32 -1, i32* %228, align 4
  br label %229

229:                                              ; preds = %213, %205
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, -1
  br i1 %236, label %237, label %253

237:                                              ; preds = %229
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i32 (i32, i8*)*, i32 (i32, i8*)** %239, align 8
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i32 %240(i32 %246, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i32 0, i32 1
  store i32 -1, i32* %252, align 4
  br label %253

253:                                              ; preds = %237, %229
  br label %327

254:                                              ; preds = %202
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, -1
  br i1 %261, label %262, label %269

262:                                              ; preds = %254
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  store i32 %263, i32* %268, align 4
  br label %326

269:                                              ; preds = %254
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* %6, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %293

278:                                              ; preds = %269
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %286, label %293

286:                                              ; preds = %278
  %287 = load i32, i32* %6, align 4
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  store i32 %287, i32* %292, align 4
  br label %325

293:                                              ; preds = %278, %269
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load i32 (i32, i8*)*, i32 (i32, i8*)** %295, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 %296(i32 %302, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DC, align 8
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 0
  %306 = load i32 (i32, i8*)*, i32 (i32, i8*)** %305, align 8
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i32 %306(i32 %312, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %314 = load i32, i32* %6, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %316 = load i32, i32* %8, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  store i32 %314, i32* %319, align 4
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** @g_bindings, align 8
  %321 = load i32, i32* %8, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 1
  store i32 -1, i32* %324, align 4
  br label %325

325:                                              ; preds = %293, %286
  br label %326

326:                                              ; preds = %325, %262
  br label %327

327:                                              ; preds = %326, %253
  br label %328

328:                                              ; preds = %327, %195
  %329 = load i64, i64* @qtrue, align 8
  %330 = call i32 @Controls_SetConfig(i64 %329)
  %331 = load i64, i64* @qfalse, align 8
  store i64 %331, i64* @g_waitingForKey, align 8
  %332 = load i64, i64* @qtrue, align 8
  store i64 %332, i64* %4, align 8
  br label %333

333:                                              ; preds = %328, %138, %133, %74, %70, %63, %58
  %334 = load i64, i64* %4, align 8
  ret i64 %334
}

declare dso_local i64 @Rect_ContainsPoint(i32*, i32, i32) #1

declare dso_local i32 @BindingIDFromName(i32) #1

declare dso_local i32 @Controls_SetConfig(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
